import 'package:flutter/material.dart';

class CustomWidgets {

//button widget
  Widget button(String text,Function onPressed) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(350, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: const Color.fromARGB(255, 29, 148, 245)),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }

//Textformfield widget
Widget textbox(String text)
{
  return TextFormField(cursorColor: Colors.black,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        prefixIconColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        filled: true,
                        fillColor: Colors.grey,
                        hintText: "Email Id",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                        )));
}
}
