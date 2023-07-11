// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../../tools/colors.dart';
import 'ResetPassword3.dart';

class ResetPassword2 extends StatefulWidget {
  const ResetPassword2({super.key});

  @override
  _ResetPassword2 createState() => _ResetPassword2();
}

class _ResetPassword2 extends State<ResetPassword2> {
  final List<String> genderItems = ['Student', 'Professor'];
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  String? selectedValue;
  int selectedPage = 1;
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
                  'Almost Done !',
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
              
              const Center(
                child:  Text(
                    'Please check your e-mail for completing\nlast step from recovering your password',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
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
                          const ResetPassword3(),
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
                height: 202,
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
