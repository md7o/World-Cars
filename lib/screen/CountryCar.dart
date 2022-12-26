import 'package:flutter/material.dart';
import 'package:world_car/models/world_car.dart';

class CountryCar extends StatelessWidget {
  const CountryCar({
    super.key,
    required this.item,
    required this.label,
    required this.img,
    required this.transitionAnimation,
  });

  final List<WorldCar> item;
  final String label;
  final String img;

  final Animation<double> transitionAnimation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF11101C),

      // appBar: AppBar(
      //   backgroundColor: const Color(0xFF11101C),
      //   title: const Text('LuckyRoller'),
      // ),
      // Body

      body: Column(
        children: [
          // AppBar

          //  AnimatedBuilder(
          //     animation: transitionAnimation,
          //     builder: (context, child) {
          //       return SlideTransition(
          //         position: Tween<Offset>(
          //           begin: const Offset(-1, 0),
          //           end: const Offset(0, 0),
          //         ).animate(
          //           CurvedAnimation(
          //             curve: const Interval(0.4, 1, curve: Curves.ease),
          //             parent: transitionAnimation,
          //           ),
          //         ),
          //         child: child,
          //       );

          AnimatedBuilder(
            animation: transitionAnimation,
            builder: (context, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, -1),
                  end: const Offset(0, 0),
                ).animate(CurvedAnimation(
                  curve: const Interval(0, 0.7, curve: Curves.easeOutCubic),
                  parent: transitionAnimation,
                )),
                child: child,
              );
            },
            child: Container(
              height: 175.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xFF1A2037),
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(200, 100))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Image.asset(
                      img,
                      width: 80,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    label,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),

          // AppBar

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ScaleTransition(
              scale: Tween<double>(begin: 0.6, end: 1).animate(CurvedAnimation(
                  parent: transitionAnimation, curve: Curves.easeOutCubic)),
              child: Text(
                '$label Cars',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 85),
              child: ScaleTransition(
                scale: Tween<double>(begin: 0.5, end: 1).animate(
                    CurvedAnimation(
                        parent: transitionAnimation,
                        curve: Curves.easeOutCubic)),
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    mainAxisExtent: 95,
                  ),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF1A2037),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            item[index].imageUrl,
                            width: 52,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              item[index].name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: ScaleTransition(
              scale: Tween<double>(begin: 0.5, end: 1).animate(CurvedAnimation(
                  parent: transitionAnimation, curve: Curves.easeOutCubic)),
              child: const Text(
                'Facts',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          AnimatedBuilder(
            animation: transitionAnimation,
            builder: (context, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: const Offset(0, 0),
                ).animate(
                  CurvedAnimation(
                    curve: const Interval(0, 0.6, curve: Curves.easeOutCubic),
                    parent: transitionAnimation,
                  ),
                ),
                child: child,
              );
            },
            child: Container(
              margin: const EdgeInsets.only(left: 55),
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF1A2037),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.elliptical(50, 50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Image.asset(
                      item[1].imageUrl,
                      width: 58,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Text(
                        item[4].name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: AnimatedBuilder(
              animation: transitionAnimation,
              builder: (context, child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(-1, 0),
                    end: const Offset(0, 0),
                  ).animate(
                    CurvedAnimation(
                      curve: const Interval(0.4, 1, curve: Curves.easeOutCubic),
                      parent: transitionAnimation,
                    ),
                  ),
                  child: child,
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 55),
                height: 100,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFF1A2037),
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.elliptical(50, 50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          item[5].name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Image.asset(
                        item[5].imageUrl,
                        width: 72,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
