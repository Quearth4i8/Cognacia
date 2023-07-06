// import 'package:flutter/material.dart';
// import 'package:dropdown_model_list/dropdown_model_list.dart';
// import 'package:flutter_application_1/colors.dart';

// import 'file.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   OptionItem optionItemSelected = OptionItem(title: "Select User");
//   DropListModel dropListModel = DropListModel([
//     OptionItem(id: "1", title: "Student"),
//     OptionItem(id: "2", title: "Professor"),
//   ]);

//    @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [AppColors.DarkApp, AppColors.greenie],
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(top: 133.0, bottom: 20.0),
//               child: Text(
//                 'Create Account',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 123.0, bottom: 300),
//               child: Center(
//                 child: Container(
//                   width: 342,
//                   child: CustomSelectDropList(
//                     itemSelected: optionItemSelected,
//                     dropListModel: dropListModel,
//                     showIcon: false,
//                     showArrowIcon: true,
//                     showBorder: true,
//                     paddingLeft: 8,
//                     paddingRight: 8,
//                     paddingTop: 8,
//                     paddingBottom: 8,
//                     icon: const Icon(Icons.person, color: Colors.black),
//                     arrowIconSize: 23,
//                     arrowColor: Colors.white, // Set the button color here
//                     textColorTitle: Colors.white,
//                     hintColorTitle: Colors.white,
//                     textSizeTitle: 16,
//                     textColorItem: Colors.black,
//                     textSizeItem: 15,
//                     borderColor: Colors.white,
//                     borderSize: 1,
//                     borderRadius: BorderRadius.circular(10),
//                     containerPadding: const EdgeInsets.all(8),
//                     containerMargin: EdgeInsets.zero,
//                     containerDecoration: BoxDecoration(
//                       border: Border.all(
//                         color: Colors.white,
//                         width: 1,
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     onOptionSelected: (optionItem) {
//                       setState(() {
//                         optionItemSelected = optionItem;
//                       });
//                     },
//                     dropdownItemColor: Colors.blue,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//...................................................................

import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String dropdownValue = 'Select your Type';
  var _items = ['Select your Type', 'Student', 'Professor'];
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 133.0, bottom: 20.0),
              child: Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),



           Padding(
  padding: const EdgeInsets.only(top: 123.0, bottom: 300),
  child: Center(
    child: SizedBox(
      width: 342,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
                return [
                  'Student',
                  'Professor',
                ].map((String item) {
                  return PopupMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList();
              },
              onSelected: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              child: ListTile(
                title: Text(
                  dropdownValue,
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.arrow_drop_down, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Select your role',
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    ),
  ),
)




            
          ],
        ),
      ),
    );
  }
}
