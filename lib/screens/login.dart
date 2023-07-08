import 'package:flutter/material.dart';

import '../tools/colors.dart';
import 'CreateAccontPage1.dart';
import 'CreateAccountPage4.dart';

class login extends StatefulWidget {
  @override
  _login createState() => _login();
}

class _login extends State<login> {
  final List<String> genderItems = ['Student', 'Professor'];
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  String? selectedValue;
  int selectedPage = 2;
  int pageCount = 4;
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
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 100.0, bottom: 20.0),
                child: Text(
                  'Welcome Back !',
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
                  style: TextStyle(color: Colors.white), // the text color to
                  decoration: InputDecoration(
                    labelText: "username",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 18.0, top: 18, bottom: 20),
                    prefixIcon: Image.asset(
                      'assets/icons/user.png',
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
                child: Stack(
                  children: [
                    TextField(
                      controller: passwordcontroller,
                      style: TextStyle(color: Colors.white), // the text color
                      obscureText:
                          !isPasswordVisible, // Set the obscureText property
                      decoration: InputDecoration(
                        labelText: "password",
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        contentPadding:
                            EdgeInsets.only(left: 18.0, top: 18, bottom: 20),
                        prefixIcon: Image.asset(
                          'assets/icons/lock.png',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 310.0,
                      top: 20.0,
                      child: GestureDetector(
                        onTap: () {
                          // Toggle the visibility of the password
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                        child: Icon(
                          isPasswordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 230.0, top: 10),
                child: InkWell(
                  child: Text("forgot password ?",
                      style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.white,
                      )),
                  onTap: () {},
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
                        'Login',
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
              Center(
                child: Container(
                  margin: EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Text(
                        "Don't have an account ?",
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        width: 10,
                      ),
                      InkWell(
                        child: Text(
                          "create one",
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: AppColors.lightgreenie,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      createaccountpage1(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
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
              ),
              Container(
                height: 143,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
