import 'dart:async';
import 'package:flutter/material.dart';
import 'kategori.dart';

class SplashScreen extends StatefulWidget {
  @override
  _MySplashScreen createState() => _MySplashScreen();
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     decoration: BoxDecoration(color: Colors.white),
  //     child: Stack(
  //       children: <Widget>[
  //         Center(
  //             //     // child: SvgPicture,
  //             )
  //       ],
  //     ),
  //   );
  // }
}

class _MySplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Kategori())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        // child: Image(image: "../assets/logo-bio.png")
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}
