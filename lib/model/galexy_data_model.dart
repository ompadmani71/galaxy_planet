class GalaxyModel {
  GalaxyModel(
      {required this.image,
      required this.title,
      required this.distanceToSun,
      required this.distanceToEarth,
      required this.distance,
      required this.gravity,
      required this.overview});

  String image;
  String title;
  double distanceToSun;
  double distanceToEarth;
  double distance;
  double gravity;
  String overview;

  static List<GalaxyModel> galaxyData = [
    GalaxyModel(
      image: "assets/images/mercury.png",
      title: "Mercury",
      distanceToSun: 68.02,
      distanceToEarth: 126.46,
      distance: 74.6,
      gravity: 3.70,
      overview:
          "Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Sun's planets. It is named after the Roman god Mercurius (Mercury), god of commerce, messenger of the gods, and mediator between gods and mortals, corresponding to the Greek god Hermes (Ἑρμῆς). Like Venus, Mercury orbits the Sun within Earth's orbit as an inferior planet, and its apparent distance from the Sun as viewed from Earth never exceeds 28°",
    ),
    GalaxyModel(
      image: "assets/images/venus.png",
      title: "Venus",
      distanceToSun: 107.48,
      distanceToEarth: 248.43,
      distance: 84.6,
      gravity: 8.87,
      overview:
          "Venus is the second planet from the Sun and is named after the Roman goddess of love and beauty. As the brightest natural object in Earth's night sky after the Moon, Venus can cast shadows and can be visible to the naked eye in broad daylight.[18][19] Venus's orbit is smaller than that of Earth, but its maximal elongation is 47°",
    ),
    GalaxyModel(
      image: "assets/images/earth.png",
      title: "Earth",
      distanceToSun: 150.95,
      distanceToEarth: 00.00,
      distance: 94.6,
      gravity: 9.80,
      overview:
          "Earth is the third planet from the Sun and the only astronomical object known to harbor life. While large volumes of water can be found throughout the Solar System, only Earth sustains liquid surface water. About 71% of Earth's surface is made up of the ocean, dwarfing Earth's polar ice, lakes, and rivers",
    ),
    GalaxyModel(
      image: "assets/images/moon.png",
      title: "Moon",
      distanceToSun: 150.00,
      distanceToEarth: 384.40,
      distance: 94.6,
      gravity: 1.62 ,
      overview:
          "The Moon is Earth's only natural satellite. Together with Earth it forms the Earth-Moon satellite system. It is about one-quarter of Earth in diameter (comparable to the width of Australia).[16] In the Solar System it is the fifth largest satellite, larger than any of the known dwarf planets and the largest (and most massive) satellite of a planet relative to the planet.",
    ),
    GalaxyModel(
      image: "assets/images/mars.png",
      title: "Mars",
      distanceToSun: 213.15,
      distanceToEarth: 144.18,
      distance: 54.6,
      gravity: 3.72,
      overview:
      "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In the English language, Mars is named for the Roman god of war. Mars is a terrestrial planet with a thin atmosphere, and has a crust primarily composed of elements similar to Earth's crust, as well as a core made of iron and nickel. Mars has surface features such as impact craters, valleys, dunes, and polar ice caps. It has two small and irregularly shaped moons",
    ),
    GalaxyModel(
      image: "assets/images/jupiter.png",
      title: "Jupiter",
      distanceToSun: 741.67,
      distanceToEarth: 603.97,
      distance: 93.6,
      gravity: 24.79,
      overview:
          "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined, but slightly less than one-thousandth the mass of the Sun. Jupiter is the third brightest natural object in the Earth's night sky after the Moon and Venus, and it has been observed since prehistoric times",
    ),
    GalaxyModel(
      image: "assets/images/saturn.png",
      title: "Saturn",
      distanceToSun: 1.47,
      distanceToEarth: 1.33,
      distance: 33.6,
      gravity: 10.44,
      overview:
          "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth.[23][24] It has only one-eighth the average density of Earth; however, with its larger volume, Saturn is over 95 times more massive.",
    ),
    GalaxyModel(
      image: "assets/images/uranus.png",
      title: "Uranus",
      distanceToSun: 2.94,
      distanceToEarth: 2.88,
      distance: 102.6,
      gravity: 8.87,
      overview:
          "Uranus is the seventh planet from the Sun. Its name is a reference to the Greek god of the sky, Uranus (Caelus), who, according to Greek mythology, was the great-grandfather of Ares (Mars), grandfather of Zeus (Jupiter) and father of Cronus (Saturn). It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System",
    ),
    GalaxyModel(
      image: "assets/images/neptune.png",
      title: "Neptune",
      distanceToSun: 4.47,
      distanceToEarth: 4.32,
      distance: 132.6,
      gravity: 11.15,
      overview:
          "Neptune is the eighth planet from the Sun and the farthest known solar planet. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth, and slightly more massive than its near-twin Uranus",
    ),
  ];
}
