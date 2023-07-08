import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../tools/colors.dart';
import '../utils/customdropdown.dart';
import 'CreateAccountPage3.dart';

class createaccountpage2 extends StatefulWidget {
  @override
  _createaccountpage2 createState() => _createaccountpage2();
}

class _createaccountpage2 extends State<createaccountpage2> {
  final List<String> genderItems = ['Tunis', 'Canada', 'USA', 'Paris'];
  String? selectedValue;
  int selectedPage = 1;
  int pageCount = 4;
  TextEditingController namecontroller = TextEditingController();
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
                height: 50,
              ),
              Container(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: [
                        Container(
                          width: 165,
                          decoration: BoxDecoration(
                            color: AppColors.greenie,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16)),
                          ),
                          child: TextField(
                            controller: namecontroller,
                            decoration: InputDecoration(
                              labelText: "First Name",
                              labelStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 18.0, top: 18, bottom: 20),
                            ),
                          ),
                        ),
                        Container(
                          width: 20,
                        ),
                        Container(
                          width: 165,
                          decoration: BoxDecoration(
                            color: AppColors.greenie,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16)),
                          ),
                          child: TextField(
                            controller: namecontroller,
                            decoration: InputDecoration(
                              labelText: "Last Name",
                              labelStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 18.0, top: 18, bottom: 20),
                            ),
                          ),
                        ),
                      ],
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
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        contentPadding:
                            EdgeInsets.only(left: 18.0, top: 18, bottom: 20),
                        prefixIcon: const Icon(
                          Icons.mail,
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
                        labelText: "Phone",
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        contentPadding:
                            EdgeInsets.only(left: 18.0, top: 18, bottom: 20),
                        prefixIcon: const Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
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
                      hintText: 'City',
                      validator: (value) {
                        if (value == null) {
                          return 'Please select Type.';
                        }
                        return null;
                      },
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
                        labelText: "establishment",
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        contentPadding:
                            EdgeInsets.only(left: 18.0, top: 18, bottom: 20),
                        prefixIcon: const Icon(
                          Icons.apartment,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: [
                        Container(
                          width: 165,
                          decoration: BoxDecoration(
                            color: AppColors.greenie,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16)),
                          ),
                          child: TextField(
                            controller: namecontroller,
                            decoration: InputDecoration(
                              labelText: "Field",
                              labelStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 18.0, top: 18, bottom: 20),
                            ),
                          ),
                        ),
                        Container(
                          width: 20,
                        ),
                        Container(
                          width: 165,
                          decoration: BoxDecoration(
                            color: AppColors.greenie,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16)),
                          ),
                          child: TextField(
                            controller: namecontroller,
                            decoration: InputDecoration(
                              labelText: "Class",
                              labelStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 18.0, top: 18, bottom: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
              Container(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        createaccountpage3(),
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
                height: 10,
              ),
              PageViewDotIndicator(
                currentItem: selectedPage,
                count: pageCount,
                unselectedColor: Colors.white,
                selectedColor: AppColors.lightgreenie,
                size: const Size(8, 8),
              ),
              Container(
                height: 30,
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
              Container(
                height: 29,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
