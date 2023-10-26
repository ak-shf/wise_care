import 'package:flutter/material.dart';
import 'package:wise_care/homeScreen.dart';
import 'package:wise_care/loginPage.dart';
import 'package:wise_care/widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  CustomWidgets custom = CustomWidgets();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Register as New User',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            SizedBox(
                width: 320,
                child: custom.textbox(
                    text: 'Email Id', icon: const Icon(Icons.mail))),
            SizedBox(
              width: 320,
              child: custom.textbox(
                  text: 'Password', icon: const Icon(Icons.lock_clock_rounded)),
            ),
            SizedBox(
              width: 320,
              child: custom.textbox(
                  text: 'Confirm Password',
                  icon: const Icon(Icons.lock_clock_rounded)),
            ),
            SizedBox(
              width: 320,
              child: custom.textbox(
                  text: 'Mobile No',
                  icon: const Icon(Icons.phone_android_rounded)),
            ),
            SizedBox(
              width: 250,
              child: custom.button('Submit', () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const HomeScreen()));
              }),
            ),
            const Text(
              '------------------------------or------------------------------',
              style: TextStyle(color: Colors.white),
            ),
            const Text('Google Sign in', style: TextStyle(color: Colors.white)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already Registered?',
                    style: TextStyle(color: Colors.white)),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const LoginScreen()));
                    },
                    child: const Text('Login Here'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
