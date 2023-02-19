// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'kategori.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreen createState() => _MySplashScreen();
}

class _MySplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Kategori())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Image(
              height: MediaQuery.of(context).size.height - 5,
              width: MediaQuery.of(context).size.width - 5,
              fit: BoxFit.fill,
              image:
                  const AssetImage('assets/Splash Screen Bio Soltamax-01.png')),
          // child: Stack(children: [
          //   Image(
          //     height: MediaQuery.of(context).size.height - 5,
          //     fit: BoxFit.fill,
          //     image: const AssetImage(
          //         'assets/Splash Screen App Bio Soltamax-01 2.png'),
          //   ),
          //   Positioned(bottom: 10, child: Container())
          // ]),
        ));
  }
}
