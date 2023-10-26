import 'package:flutter/material.dart';
import 'package:wise_care/loginPage.dart';
import 'package:wise_care/widgets.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});
  CustomWidgets custom = new CustomWidgets();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(height: 200),

            //Display png file in the middle of the screen
            Container(
              alignment: const Alignment(0.4, 0),
              child: const Image(
                  image:
                      AssetImage('assets/Clipped_image_20231026_112057.png')),
            ),
            const SizedBox(
              height: 75,
            ),

            //Heading and description
            const Text(
              'Wise Care',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              textAlign: TextAlign.center,
              'Access essential services for the elderly & get support anytime!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 40,
            ),

            //Get started Button
            custom.button('Get started', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            })
          ],
        )),
      ),
    );
  }
}
