import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'mychat.dart';
import 'reg.dart';
import 'login.dart';
import 'home.dart';
void main() {
 
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      routes: {
        "home": (context) => MyHome(),
        "reg": (context) => MyReg(),
        "login": (context) => MyLogin(),
        "chat": (context) => MyChat()
      },
    ),
  );
}
