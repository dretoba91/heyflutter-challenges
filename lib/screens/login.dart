// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:heyflutter_challenges/components/helper/colors.dart';
import 'package:heyflutter_challenges/screens/personal_profile.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _controller = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        centerTitle: true,
        backgroundColor: AppColors.redAccent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: TextField(
                  controller: nameController,
                  style: TextStyle(fontSize: 22.0),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(12.0),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.redAccent,
                      size: 22.0,
                    ),
                    hintText: 'Enter your Name',
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                    focusColor: AppColors.lightGreen,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: AppColors.lightGreen,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                child: TextField(
                  controller: emailController,
                  style: TextStyle(fontSize: 22.0),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(12.0),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.redAccent,
                      size: 22.0,
                    ),
                    hintText: 'Enter your Email',
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                    focusColor: AppColors.lightGreen,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: AppColors.lightGreen,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  minimumSize: Size.fromHeight(50.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PersonalProfile(
                        name: nameController.text,
                        email: emailController.text,
                      ),
                    ),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
