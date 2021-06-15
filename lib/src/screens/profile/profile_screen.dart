import 'package:flutter/material.dart';

import 'widgets/custom_bottom_bar.dart';
import 'widgets/custom_card.dart';
import 'widgets/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileCard(),
            SizedBox(height: 10),
            CustomCard(),
            CustomCard(),
            CustomCard(),
            SizedBox(height: 50),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff4245ff),
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 34,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
