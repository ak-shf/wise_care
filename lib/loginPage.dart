import 'package:flutter/material.dart';
import 'package:wise_care/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  CustomWidgets custom=new CustomWidgets();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(children: [
            Text('Login',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            custom.textbox('Email')
          ],
      )),
    );
  }
}
