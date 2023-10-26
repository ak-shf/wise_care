import 'package:flutter/material.dart';
import 'package:wise_care/homeScreen.dart';
import 'package:wise_care/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  CustomWidgets custom = new CustomWidgets();
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
                      children: [const SizedBox(height: 75,),
              Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/login image.png')),
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
              const SizedBox(
                height: 60,
              ),
              // const Text(
              //   'Sign in',
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 40,
              //       fontWeight: FontWeight.bold),
              // ),
            
              //Email id textfield
              SizedBox(
                width: 320,
                child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        prefixIconColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        hintText: "Email Id",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ))),
              ),
              const SizedBox(
                height: 20,
              ),
            
              //password textfield
              SizedBox(
                width: 320,
                child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock_clock_rounded),
                        prefixIconColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ))),
              ),
              const SizedBox(
                height: 40,
              ),
            
              //login button
              custom.button('Login', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              }),
              const SizedBox(
                height: 40,
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
                      onPressed: () {},
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
