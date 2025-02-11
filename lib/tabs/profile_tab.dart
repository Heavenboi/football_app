import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Profile'),
            SizedBox(width: 10,),

          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 40),
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Colors.deepPurple,
          child: Icon(
            Icons.person,
            size: 100,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
