import 'dart:math';

import 'package:flutter/material.dart';
import 'package:galaxy_planets/model/galexy_data_model.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.galaxy}) : super(key: key);

  final GalaxyModel galaxy;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  bool isDetailTaped = false;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))
          ..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade800,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  SizedBox(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isDetailTaped = !isDetailTaped;
                        });
                      },
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(30, 100, 30, 20),
                            margin: const EdgeInsets.only(top: 45),
                            decoration: BoxDecoration(
                                color: Colors.indigo.shade600,
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(widget.galaxy.title,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                    )),
                                const SizedBox(height: 5),
                                const Text("Milkyway Galaxy",
                                    style: TextStyle(color: Colors.white70)),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    Image.asset("assets/images/ic_distance.png",
                                        scale: 2),
                                    const SizedBox(width: 3),
                                    Text("${widget.galaxy.distance} km",
                                        style: const TextStyle(
                                            fontSize: 14, color: Colors.white70)),
                                    const Spacer(),
                                    Image.asset("assets/images/ic_gravity.png",
                                        scale: 2),
                                    const SizedBox(width: 3),
                                    Text("${widget.galaxy.gravity} m/s2",
                                        style: const TextStyle(
                                            fontSize: 14, color: Colors.white70)),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Hero(
                                tag: widget.galaxy.title,
                                child: AnimatedBuilder(
                                  animation: animationController,
                                  child:
                                      Image.asset(widget.galaxy.image, scale: 3),
                                  builder: (context, widget) {
                                    return Transform.rotate(
                                        angle: animationController.value * 2 * pi,
                                        child: widget);
                                  },
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text("OVERVIEW",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 25)),
                ],
              ),
            ),
             Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                      widget.galaxy.overview,
                      style: const TextStyle(color: Colors.white70)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            AnimatedContainer(
              height: isDetailTaped ? 300 : 80,
              duration: const Duration(milliseconds: 400),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              top: isDetailTaped
                                  ? Radius.zero
                                  : const Radius.circular(10),
                              bottom: isDetailTaped
                                  ? const Radius.circular(10)
                                  : const Radius.circular(10)),
                          gradient: LinearGradient(
                              colors: [Colors.blue, Colors.blue.shade200],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight)),
                      child: (isDetailTaped)
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("WelCome to ${widget.galaxy.title}",
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 25)),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.keyboard_arrow_left,
                                    color: Colors.white, size: 40),
                                InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      "BACK",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    )),
                              ],
                            ),
                    ),
                    if (isDetailTaped)
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(widget.galaxy.image, scale: 4),
                          const SizedBox(height: 20),
                          const Text(
                            "Distance to Sun",
                            style: TextStyle(color: Colors.white70, fontSize: 13),
                          ),
                          Text(
                            "${widget.galaxy.distanceToSun} million km",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Distance to Earth",
                            style: TextStyle(color: Colors.white70, fontSize: 13),
                          ),
                          Text(
                            "${widget.galaxy.distanceToEarth} million km",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
