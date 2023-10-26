import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:wise_care/homeScreen.dart';
import 'package:wise_care/register.dart';
import 'package:wise_care/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  CustomWidgets custom = CustomWidgets();
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 75,
              ),
              // Container(
              //     width: 250,
              //     height: 250,
              //     decoration: const BoxDecoration(
              //         image: DecorationImage(
              //             image: AssetImage('assets/login image.png')),
              //         borderRadius: BorderRadius.all(Radius.circular(30)))),
              const SizedBox(
                height: 60,
              ),
              //Email id textfield
              SizedBox(
                  width: 320,
                  child: custom.textbox(obscure: false,
                      text: 'Email id', icon: const Icon(Icons.mail))),
              const SizedBox(
                height: 20,
              ),

              //password textfield
              SizedBox(
                  width: 320,
<<<<<<< HEAD
                  child: custom.textbox(obscure: true,
                      text: 'Password', icon: const Icon(Icons.lock_clock_rounded))),
=======
                  child: custom.textbox(
                      text: 'Password',
                      icon: const Icon(Icons.lock_clock_rounded))),
>>>>>>> 6e0022dcc1adfae6accea69349397674dcf3b1a1
              const SizedBox(
                height: 40,
              ),

              //login button
              SizedBox(
                width: 250,
                child: custom.button('Login', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                }),
              ),
              const SizedBox(height: 40,),
               const Text(
              '------------------------------or------------------------------',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 40,),
            const Text('Google Sign in', style: TextStyle(color: Colors.white)),
              const SizedBox(
                height: 40,
              ),
              SignInButton(
                Buttons.googleDark,
                onPressed: () {
                  // _showButtonPressDialog(context, 'Google');
                },
              ),

              //text button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'New User?',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const RegisterScreen()));
                      },
                      child: const Text(
                        'Register Here',
                        style:
                            TextStyle(color: Color.fromARGB(255, 29, 148, 245)),
                      ))
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
