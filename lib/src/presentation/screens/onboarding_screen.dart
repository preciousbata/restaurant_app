import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:restaurant_app/src/colors.dart';
import 'package:restaurant_app/src/data/onboarding_data.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:restaurant_app/src/presentation/screens/homescreen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() =>
      _OnBoardingScreenState();
}

class _OnBoardingScreenState
    extends State<OnBoardingScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: Stack(
        children: [
          CustomPaint(
            painter: ArchPainter(),
            child: SizedBox(
              width: screenSize.width,
              height: screenSize.height,
            ),
          ),
          Positioned(
            top: 50,
            left: screenSize.width - 325,
            child: const Text(
              'MAYOR DINING',
              style: TextStyle(
                color: green,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            )
                .animate()
                .fadeIn(
                    duration: const Duration(seconds: 3))
                .then(delay: 50.ms)
                .slide(),
          ),
          Positioned(
            top: 50,
            child: Lottie.asset(
                tabs[_currentIndex].lottiefile,
                width: 400,
                alignment: Alignment.topCenter),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 220,
              child: Column(
                children: [
                  Flexible(
                    child: PageView.builder(
                      itemCount: tabs.length,
                      controller: _pageController,
                      itemBuilder: (context, index) {
                        OnboardingData tab = tabs[index];
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              tab.title,
                              style: const TextStyle(
                                  fontWeight:
                                      FontWeight.bold,
                                  fontSize: 27,
                                  color: white),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              tab.subtilte,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: white),
                            ),
                          ],
                        );
                      },
                      onPageChanged: (value) {
                        _currentIndex = value;
                        setState(() {});
                      },
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int index = 0;
                          index < tabs.length;
                          index++)
                        DotIndicator(
                          isSelected:
                              index == _currentIndex,
                        )
                    ],
                  ),
                  const SizedBox(
                    height: 37,
                  )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const HomeScreen())),
        backgroundColor: Colors.transparent,
        child: const Icon(
          Icons.arrow_forward,
          size: 30,
          color: green,
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  final bool isSelected;
  const DotIndicator({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 10,
        width: isSelected ? 18 : 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected ? green : Colors.grey),
      ),
    );
  }
}

class ArchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path greenArc = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height - 400)
      ..quadraticBezierTo(size.width / 0.63, size.height,
          size.width, size.height - 400)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(greenArc, Paint()..color = green);

    Path whiteArc = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height - 420)
      ..quadraticBezierTo(size.width / 0.63,
          size.height - 70, size.width, size.height - 420)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(whiteArc, Paint()..color = white);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
