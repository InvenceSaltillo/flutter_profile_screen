import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_screen_yt/src/screens/profile/widgets/custom_elevated_button.dart';

import 'indicators.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.6,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'My Profile',
              style: GoogleFonts.josefinSans(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ClipOval(
              child: Image.asset(
                'assets/me.jpg',
                width: size.width * 0.3,
              ),
            ),
            Text.rich(
              TextSpan(
                text: 'César Riojas\n',
                style: GoogleFonts.josefinSans(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'riojas@riojas.com',
                    style: GoogleFonts.josefinSans(
                      fontSize: 20,
                      color: Colors.black38,
                    ),
                  )
                ],
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Indicators(
                  number: '250',
                  text: 'Reviews',
                ),
                Indicators(
                  number: '100k',
                  text: 'Followers',
                ),
                Indicators(
                  number: '30',
                  text: 'Following',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomElevatedButton(
                  text: 'Edit Profile',
                  primary: Color(0xff4245ff),
                ),
                CustomElevatedButton(
                  text: 'Settings',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
