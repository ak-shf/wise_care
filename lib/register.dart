import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:wise_care/firebase_Auth.dart';
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
  final _emailcontroller = TextEditingController();
  final _password1controller = TextEditingController();
  final _password2controller = TextEditingController();
  final _mobilenocontroller = TextEditingController();

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

            //email textfield
            SizedBox(
                width: 320,
                child: custom.textbox(
                    controller: _emailcontroller,
                    text: 'Email Id',
                    icon: const Icon(Icons.mail),
                    obscure: false)),

            //password textfield
            SizedBox(
              width: 320,
              child: custom.textbox(
                  controller: _password1controller,
                  text: 'Password',
                  icon: const Icon(Icons.lock_clock_rounded),
                  obscure: true),
            ),

            //confirm password textfield
            SizedBox(
              width: 320,
              child: custom.textbox(
                  obscure: true,
                  controller: _password2controller,
                  text: 'Confirm Password',
                  icon: const Icon(Icons.lock_clock_rounded)),
            ),

            //mobile no textfield
            SizedBox(
              width: 320,
              child: custom.textbox(
                  obscure: false,
                  controller: _mobilenocontroller,
                  text: 'Mobile No',
                  icon: const Icon(Icons.phone_android_rounded)),
            ),

            //submit button
            SizedBox(
              width: 200,
              child: custom.button(
                  text: 'Submit',
                  onPressed: () {
                    AuthServices.signup(
                        email: _emailcontroller.text.trim(),
                        password: _password1controller.text.trim());
                    // if (res != "success") {
                    //   print(res);
                    //   return;
                    // }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const HomeScreen()));
                  }),
            ),

            const Text(
              '------------------------------or------------------------------',
              style: TextStyle(color: Colors.white),
            ),

            //google sign in button
            SignInButton(
              Buttons.google,
              onPressed: () {
                // _showButtonPressDialog(context, 'Google');
              },
            ),

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
