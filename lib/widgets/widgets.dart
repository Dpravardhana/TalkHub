import 'package:flutter/material.dart';
import 'package:chat_app/shared/constants.dart';
const textInputDecoration = InputDecoration(
  fillColor: Color.fromARGB(238, 238, 238, 238),
  filled: true,
  labelStyle: TextStyle(color: Color.fromARGB(255, 46, 45, 45), fontWeight: FontWeight.w100),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
);

void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

void showSnackbar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(fontSize: 14),
      ),
      backgroundColor: color,
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: "OK",
        onPressed: () {},
        textColor: Colors.white,
      ),
    ),
  );
}