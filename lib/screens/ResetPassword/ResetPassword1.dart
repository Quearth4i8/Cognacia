// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../../tools/colors.dart';
import 'ResetPassword2.dart';

class ResetPassword1 extends StatefulWidget {
  const ResetPassword1({super.key});

  @override
  _ResetPassword1 createState() => _ResetPassword1();
}

class _ResetPassword1 extends State<ResetPassword1> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  String? selectedValue;
  int selectedPage = 0;
  int pageCount = 3;
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.DarkApp, AppColors.greenie],
            ),
          ),
          child: Column(
            children: [
              Container(height: 70,),
              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(top: 100.0, bottom: 20.0),
                child: const Text(
                  'Reset Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 80,
              ),
              Container(
                width: 350,
                decoration: BoxDecoration(
                  color: AppColors.greenie,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                ),
                child: TextField(
                  controller: namecontroller,
                  style: const TextStyle(color: Colors.white), // the text color to
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: const TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    contentPadding:
                        const EdgeInsets.only(left: 18.0, top: 18, bottom: 20),
                    prefixIcon: Image.asset(
                      'assets/icons/sms.png',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                height: 88,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const ResetPassword2(),
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
                child: Container(
                  width: 345,
                  margin: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: AppColors.greenie,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 188,
              ),
              
            PageViewDotIndicator(
              currentItem: selectedPage,
              count: pageCount,
              unselectedColor: Colors.white,
              selectedColor: AppColors.lightgreenie,
              size: const Size(8, 8),
            ),
              Container(
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
