import 'package:flutter/material.dart';

class CustomWidgets {
//button widget
  Widget button(String text, Function onPressed) {
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
  Widget textbox({required String text, Icon? icon, required bool obscure}) {
    return TextFormField(
        style: const TextStyle(color: Colors.white),
        obscureText: obscure,
        cursorColor: Colors.white,
        decoration: InputDecoration(
            label: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
            prefixIcon: icon,
            prefixIconColor: Colors.white,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.white, width: 2)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            // hintText: text,
            hintStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic)));
  }
}
