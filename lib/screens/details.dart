import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_car/models/world_car.dart';

class Details_car extends StatelessWidget {
  const Details_car({
    super.key,
    required this.detail,
    required this.carItem,
    required this.transitionAnimation,
  });

  final List<Details> detail;
  final Cars carItem;
  final Animation<double> transitionAnimation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 35,
        leading: ScaleTransition(
          scale: Tween<double>(begin: 0, end: 1).animate(
            CurvedAnimation(
              parent: transitionAnimation,
              curve: Curves.easeOutCubic,
            ),
          ),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF1B2859),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.blue,
                  size: 18,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 25,
            ),
            child: AnimatedBuilder(
              animation: transitionAnimation,
              builder: (context, child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.5, 1),
                    end: const Offset(0, 0),
                  ).animate(CurvedAnimation(
                    curve: const Interval(0, 1, curve: Curves.easeOutCubic),
                    parent: transitionAnimation,
                  )),
                  child: child,
                );
              },
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        carItem.carImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.transparent
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 10),
            child: AnimatedBuilder(
              animation: transitionAnimation,
              builder: (context, child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.8, 1),
                    end: const Offset(0, 0),
                  ).animate(CurvedAnimation(
                    curve: const Interval(0, 1, curve: Curves.easeOutCubic),
                    parent: transitionAnimation,
                  )),
                  child: child,
                );
              },
              child: Text(
                carItem.carName,
                style: GoogleFonts.josefinSans(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 440,
            child: Padding(
              padding: const EdgeInsets.all(
                5,
              ),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  crossAxisCount: 2,
                  mainAxisExtent: 95,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: detail.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                    child: AnimatedBuilder(
                      animation: transitionAnimation,
                      builder: (context, child) {
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0.5, 1),
                            end: const Offset(0, 0),
                          ).animate(CurvedAnimation(
                            curve: const Interval(0, 1,
                                curve: Curves.easeOutCubic),
                            parent: transitionAnimation,
                          )),
                          child: child,
                        );
                      },
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Image.asset(
                                  detail[index].detailPhoto,
                                  width: 40,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    detail[index].detailName,
                                    style: GoogleFonts.josefinSans(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      detail[index].detailInfo,
                                      style: GoogleFonts.josefinSans(
                                        textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
