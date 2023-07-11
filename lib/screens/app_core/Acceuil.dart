// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/tools/colors.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({super.key});

  @override
  _AcceuilState createState() => _AcceuilState();
}

TextEditingController searchcontroller = TextEditingController();

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0),
            child: SizedBox(
              width: 342,
              child: Row(
                children: [
                  Image.asset(
                    "assets/page 2/user.png",
                    width: 48,
                    height: 48,
                  ),
                  const Spacer(),
                  const Center(
                      child: Text(
                    "Hi, Aziz",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  const Spacer(),
                  Image.asset(
                    "assets/icons/notification.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchcontroller,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "Search",
                      labelStyle: const TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: const EdgeInsets.only(
                          left: 18.0, top: 18, bottom: 20),
                      prefixIcon: Image.asset(
                        'assets/icons/search.png',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      colors: [AppColors.greenie, AppColors.DarkApp],
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/icons/filter.png',
                      color: AppColors.lightgreenie,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
