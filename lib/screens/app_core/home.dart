// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/app_core/profile.dart';
// import 'package:flutter_application_1/screens/app_core/settings.dart';
// import 'package:flutter_application_1/tools/colors.dart';

// import 'chat.dart';
// import 'dashboard.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   // Properties & Variables needed

//   int currentTab = 0; // to keep track of active tab index
//   final List<Widget> screens = [
//     Dashboard(),
//     Chat(),
//     Profile(),
//     Settings(),
//   ]; // to store nested tabs
//   final PageStorageBucket bucket = PageStorageBucket();
//   Widget currentScreen = Dashboard(); // Our first view in viewport

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageStorage(
//         child: currentScreen,
//         bucket: bucket,
//       ),
//       floatingActionButton: Container(
//   decoration: BoxDecoration(
//     gradient: LinearGradient(
//       colors: [AppColors.greenie, AppColors.lightgreenie],
//       begin: Alignment.topLeft,
//       end: Alignment.bottomRight,
//     ),
//     shape: BoxShape.circle,
//   ),
//   child: FloatingActionButton(
//   onPressed: () {},
//   backgroundColor: Colors.transparent,
//   child: Stack(
//     alignment: Alignment.center,
//     children: [
//       Container(
//         width: 30, // Adjust the size as needed
//         height: 30,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           border: Border.all(
//             color: Colors.white,
//             width: 2.0, // Adjust the border thickness as needed
//           ),
//         ),
//       ),
//       Icon(
//         Icons.add,
//         size: 24, // Adjust the size as needed
//         color: Colors.white, // Replace with your desired color
//       ),
//     ],
//   ),
// ),

// ),

//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         shape: CircularNotchedRectangle(),
//         notchMargin: 10,
//         child: Container(
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen =
//                             Dashboard(); // if user taps on this dashboard tab will be active
//                         currentTab = 0;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Icon(
//                           Icons.dashboard,
//                           color: currentTab == 0 ? AppColors.greenie : Colors.grey,
//                         ),
//                         Text(
//                           'Acceuil',
//                           style: TextStyle(
//                             color: currentTab == 0 ? AppColors.greenie : Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen =
//                             Chat(); // if user taps on this dashboard tab will be active
//                         currentTab = 1;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Icon(
//                           Icons.chat,
//                           color: currentTab == 1 ? AppColors.greenie : Colors.grey,
//                         ),
//                         Text(
//                           'Etude',
//                           style: TextStyle(
//                             color: currentTab == 1 ? AppColors.greenie : Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),

//               // Right Tab bar icons

// ignore_for_file: library_private_types_in_public_api, unused_element, sort_child_properties_last

//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen =
//                             Profile(); // if user taps on this dashboard tab will be active
//                         currentTab = 2;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Icon(
//                           Icons.chat,
//                           color: currentTab == 2 ? AppColors.greenie : Colors.grey,
//                         ),
//                         Text(
//                           'Chat',
//                           style: TextStyle(
//                             color: currentTab == 2 ? AppColors.greenie : Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen =
//                             Settings(); // if user taps on this dashboard tab will be active
//                         currentTab = 3;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Icon(
//                           Icons.account_circle,
//                           color: currentTab == 3 ? AppColors.greenie : Colors.grey,
//                         ),
//                         Text(
//                           'Profile',
//                           style: TextStyle(
//                             color: currentTab == 3 ? AppColors.greenie : Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/app_core/Chat.dart';
import 'package:flutter_application_1/screens/app_core/Profile.dart';
import 'package:flutter_application_1/tools/colors.dart';

import 'Etude.dart';
import 'Acceuil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
    const Acceuil(),
    const Etude(),
    const Chat(),
    const Profile(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Acceuil();
  bool isSelected = false;

  void _toggleIcon() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  void changeTab(int tabIndex) {
    setState(() {
      currentScreen = screens[tabIndex];
      currentTab = tabIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.greenie, AppColors.lightgreenie],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
              ),
              const Icon(
                Icons.add,
                size: 24,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () => changeTab(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          currentTab == 0
                              ? 'assets/icons/homefilled.png' // Filled image asset
                              : 'assets/icons/home.png', // Original image asset
                          width: 24,
                        ),
                        Text(
                          'Acceuil',
                          style: TextStyle(
                            color: currentTab == 0
                                ? AppColors.greenie
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () => changeTab(1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          currentTab == 1
                              ? 'assets/icons/filledmsg.png' // Filled image asset
                              : 'assets/icons/notfilledmsg.png', // Original image asset
                          width: 24,
                        ),
                        Text(
                          'Etude',
                          style: TextStyle(
                            color: currentTab == 1
                                ? AppColors.greenie
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () => changeTab(2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          currentTab == 2
                              ? 'assets/icons/chatfill.png' // Filled image asset
                              : 'assets/icons/chatnofill.png', // Original image asset
                          width: 24,
                        ),
                        Text(
                          'Chat',
                          style: TextStyle(
                            color: currentTab == 2
                                ? AppColors.greenie
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () => changeTab(3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          currentTab == 3
                              ? 'assets/icons/filledmsg.png' // Filled image asset
                              : 'assets/icons/notfilledmsg.png', // Original image asset
                          width: 24,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: currentTab == 3
                                ? AppColors.greenie
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
