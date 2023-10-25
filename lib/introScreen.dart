import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Image(image: AssetImage('assets/Screenshot 2023-10-25 212328.png')),
          const Text('Wise Care'),
          const Text(
              'Access essential services for the elderly & get support anytime!'),
          ElevatedButton(onPressed: () {}, child: const Text('Get Started'))
        ],
      )),
    );
  }
}
