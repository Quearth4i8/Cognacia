// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../tools/colors.dart';
import 'CreateAccount/CreateAccontPage1.dart';

class getstarted extends StatelessWidget {
  const getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/getstarted/home.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          ///image use 1

          Positioned(
            top: 125,
            left: 49,
            child: Row(
              children: [
                Image.asset(
                  'assets/getstarted/Ellipse 2.png',
                  width: 70,
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 46.0),
                  child: Image.asset(
                    'assets/getstarted/star.png',
                    width: 21.5,
                    height: 21.5,
                  ),
                ),
              ],
            ),
          ),

          ///image use 2

          Positioned(
            top: 108,
            left: 264,
            child: Row(
              children: [
                Image.asset(
                  'assets/getstarted/Ellipse 3.png',
                  width: 58,
                  height: 58,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 46.0),
                  child: Image.asset(
                    'assets/getstarted/star.png',
                    width: 17.92,
                    height: 17.92,
                  ),
                ),
              ],
            ),
          ),

          ///image use 3

          Positioned(
            top: 233,
            left: 174,
            child: Row(
              children: [
                Image.asset(
                  'assets/getstarted/Ellipse 1.png',
                  width: 104,
                  height: 104,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 78.0),
                  child: Image.asset(
                    'assets/getstarted/star.png',
                    width: 28.67,
                    height: 28.67,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 519,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "E-learning app",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Container(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/getstarted/book.png',
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 48.0),
                  child: Container(
                    width: 300,
                    alignment: Alignment.centerRight, // Align text to the right
                    child: const Text(
                      "Discover The Best Online Course",
                      style: TextStyle(color: Colors.white, fontSize: 34),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const createaccountpage1(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(1.0, 0.0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      );
                    },
                  ),
                );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    backgroundColor: AppColors.greenie,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        top: 14.0, bottom: 14.0, left: 16.0, right: 16.0),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 620,
            left: 318.5,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const createaccountpage1(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(1.0, 0.0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: Image.asset(
                'assets/getstarted/login.png',
                width: 100,
                height: 100,
              ),
            ),
          )
        ],
      ),
    );
  }
}
