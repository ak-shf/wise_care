import 'package:flutter/material.dart';

class CustomWidgets {
  Widget button(String text) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(fixedSize: const Size(165, 40) ,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: const Color.fromARGB(255, 29, 148, 245)),
      child: Text(text,style: const TextStyle(fontSize: 17),),
    );
  }
}
