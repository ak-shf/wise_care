import 'package:flutter/material.dart';
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
            Container(
              alignment: const Alignment(0.4, 0),
              child: const Image(
                  image:
                      AssetImage('assets/Clipped_image_20231026_112057.png')),
            ),
            const SizedBox(
              height: 75,
            ),
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
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(350, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: const Color.fromARGB(255, 29, 148, 245)),
              child: const Text(
                'Get started',
                style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),
              ),
            )
          ],
        )),
      ),
    );
  }
}
