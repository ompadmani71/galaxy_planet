import 'dart:math';

import 'package:flutter/material.dart';
import 'package:galaxy_planets/screen/detail_screen.dart';

import '../model/galexy_data_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
      // lowerBound: 0,
      // upperBound: 1,
    )..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Galaxy Planets"),
        actions: const [(Icon(Icons.search))],
      ),
      drawer: const Drawer(),
      backgroundColor: Colors.indigo.shade800,
      body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(20),
          child: ListView.builder(
              itemCount: GalaxyModel.galaxyData.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                GalaxyModel galaxy = GalaxyModel.galaxyData[index];
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(galaxy: GalaxyModel.galaxyData[index]),
                    ));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(40, 10, 10, 10),
                            margin: const EdgeInsets.only(left: 40, right: 10),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                color: Colors.indigo.shade600,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,
                                      spreadRadius: 3)
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      galaxy.title,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.more_vert,
                                        color: Colors.white),
                                  ],
                                ),
                                const SizedBox(height: 3),
                                const Text("Milkyway Galaxy",
                                    style: TextStyle(color: Colors.white70)),
                                const SizedBox(height: 4),
                                Container(
                                  height: 2,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                const SizedBox(height: 25),
                                Row(
                                  children: [
                                    Image.asset("assets/images/ic_distance.png",
                                        scale: 2),
                                    const SizedBox(width: 3),
                                    Text("${galaxy.distance} km",
                                        style: const TextStyle(
                                            fontSize: 9,
                                            color: Colors.white70)),
                                    Spacer(),
                                    Image.asset("assets/images/ic_gravity.png",
                                        scale: 2),
                                    const SizedBox(width: 3),
                                    Text("${galaxy.gravity} m/s2                 ",
                                        style: const TextStyle(
                                            fontSize: 9,
                                            color: Colors.white70)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top: 15,
                            child: Hero(
                              tag: galaxy.title,
                              child: AnimatedBuilder(
                                animation: animationController,
                                child: Image.asset(galaxy.image, scale: 5),
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
                );
              })),
    );
  }
}
