import 'package:flutter/material.dart';
import 'package:heyflutter_challenges/components/helper/colors.dart';
import 'package:heyflutter_challenges/screens/personal_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Details',
      theme: ThemeData.dark(),
      home: const PersonalProfile(),
    );
  }
}


