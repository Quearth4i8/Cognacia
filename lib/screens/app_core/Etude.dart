// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../tools/colors.dart';

class Etude extends StatefulWidget {
  const Etude({super.key});

  @override
  _EtudeState createState() => _EtudeState();
}

class _EtudeState extends State<Etude> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.greenie ,
        title: const Text('Etudes'),
      ),
      body: const Center(
        child: Text("Etude Screen"),
      ),
    );
  }
}