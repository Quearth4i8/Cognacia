import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../tools/colors.dart';
import '../utils/customdropdown.dart';
import 'CreateAccountPage2.dart';

class createaccountpage1 extends StatefulWidget {
  @override
  _createaccountpage1 createState() => _createaccountpage1();
}

class _createaccountpage1 extends State<createaccountpage1> {
  final List<String> genderItems = ['Student', 'Professor'];
  String? selectedValue;
  int selectedPage = 0;
  int pageCount = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.DarkApp, AppColors.greenie],
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 100.0, bottom: 20.0),
              child: Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 70,
            ),
            Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: AppColors.greenie,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: CustomDropdownButton(
                items: genderItems,
                selectedValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                hintText: 'Select Your Type',
                validator: (value) {
                  if (value == null) {
                    return 'Please select Type.';
                  }
                  return null;
                },
              ),
            ),
            Container(
              height: 70,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        createaccountpage2(),
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
              height: 150,
            ),
            PageViewDotIndicator(
              currentItem: selectedPage,
              count: pageCount,
              unselectedColor: Colors.white,
              selectedColor: AppColors.lightgreenie,
              size: const Size(8, 8),
            ),
            Container(
              height: 20,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    Text(
                      "Already have an account ?",
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      width: 10,
                    ),
                    InkWell(
                      child: Text("Login",
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: AppColors.lightgreenie,
                          )),
                      onTap: () {
                        Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        login(),
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
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
