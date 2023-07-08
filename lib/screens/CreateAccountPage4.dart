import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../tools/colors.dart';

class createaccountpage4 extends StatefulWidget {
  @override
  _createaccountpage4 createState() => _createaccountpage4();
}

class _createaccountpage4 extends State<createaccountpage4> {
  final List<String> genderItems = ['Student', 'Professor'];
  String? selectedValue;
  int selectedPage = 3;
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
                'Almost Done !',
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
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Please check your E-mail for confirming",style: TextStyle(fontSize: 16,color: Colors.white),
                    ),
                  ),
                  Center(
                    child: Text(
                      "your signup...",style: TextStyle(fontSize: 16,color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 70,),
            Container(
              child:Image.asset(
        'assets/page 2/smstracking.png',
        color: Colors.white,
      ),
            ),
            Container(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                
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
                      'Confirm',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(height: 50,),
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
            )
          ],
        ),
      ),
    );
  }
}
