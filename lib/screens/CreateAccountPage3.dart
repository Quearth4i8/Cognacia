import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../tools/colors.dart';
import 'CreateAccountPage4.dart';

class createaccountpage3 extends StatefulWidget {
  @override
  _createaccountpage3 createState() => _createaccountpage3();
}

class _createaccountpage3 extends State<createaccountpage3> {
  final List<String> genderItems = ['Student', 'Professor'];
  TextEditingController namecontroller = TextEditingController();
  String? selectedValue;
  int selectedPage = 2;
  int pageCount = 4;

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
  width: 350,
  decoration: BoxDecoration(
    color: AppColors.greenie,
    borderRadius: const BorderRadius.all(Radius.circular(16)),
  ),
  child: TextField(
    controller: namecontroller,
    decoration: InputDecoration(
      labelText: "password",
      labelStyle: TextStyle(color: Colors.white),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      contentPadding: EdgeInsets.only(left: 18.0, top: 18, bottom: 20),
      prefixIcon: Image.asset(
        'assets/icons/lock.png',
        color: Colors.white,
      ),
    ),
  ),
),

                    Container(
                height: 20,
              ),
              Container(
  width: 350,
  decoration: BoxDecoration(
    color: AppColors.greenie,
    borderRadius: const BorderRadius.all(Radius.circular(16)),
  ),
  child: TextField(
    controller: namecontroller,
    decoration: InputDecoration(
      labelText: "Retype password",
      labelStyle: TextStyle(color: Colors.white),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      contentPadding: EdgeInsets.only(left: 18.0, top: 18, bottom: 20),
      prefixIcon: Image.asset(
        'assets/icons/lock.png',
        color: Colors.white,
      ),
    ),
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
                        createaccountpage4(),
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
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(height: 143,),
            ],
          ),
        ),
      ),
    );
  }
}
