// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:heyflutter_challenges/components/helper/colors.dart';

class PersonalProfile extends StatefulWidget {
  const PersonalProfile({super.key});

  @override
  State<PersonalProfile> createState() => _PersonalProfileState();
}

class _PersonalProfileState extends State<PersonalProfile> {
  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.redAccent,
        title: Column(
          children: [
            Text("Profile"),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 55.0,
              backgroundImage:
                  AssetImage('assets/images/person$imageNumber.jpg'),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Mr Tanko",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        centerTitle: true,
        toolbarHeight: 200,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                elevation: 1.0,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: AppColors.redAccent,
                  ),
                  title: Text(
                    "tanko@gmail.com",
                  ),
                ),
              ),
              Card(
                elevation: 1.0,
                child: ListTile(
                  leading: Icon(
                    Icons.public,
                    color: AppColors.redAccent,
                  ),
                  title: Text("Germany"),
                ),
              ),
              Card(
                elevation: 1.0,
                child: ListTile(
                  leading: Icon(
                    Icons.subscriptions,
                    color: AppColors.redAccent,
                  ),
                  title: Text("70k"),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: SizedBox(
        height: 55.0,
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.redAccent,
            ),
            onPressed: () {
              setState(() {
                if (imageNumber == 4) {
                  imageNumber = 1;
                } else {
                  imageNumber++;
                }
              });
            },
            child: const Text(
              "Update Avatar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
    );
  }
}
