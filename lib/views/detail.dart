// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  String nama;
  String persiapan;
  String persiapanTanah;
  String persiapanBenih;
  String pascaTanam;
  String catatan;

  Detail(this.nama, this.persiapan, this.persiapanTanah, this.persiapanBenih,
      this.pascaTanam, this.catatan,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(children: [
        Container(
            height: MediaQuery.of(context).size.height * 8 / 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300),
            child: Center(
              child: Text(
                nama,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            )),
        Divider(
          color: Colors.grey.shade300,
          height: 20,
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        Container(
            height: MediaQuery.of(context).size.height * 60 / 100,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300),
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Text('Persiapan:\n\n' + persiapan + '\n',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify),
                    Text('Persiapan Tanah:\n\n' + persiapanTanah + '\n',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify),
                    Text(
                        persiapanBenih == ""
                            ? ''
                            : 'Persiapan Benih:\n\n' + persiapanBenih + '\n',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify),
                    Text('Pasca Tanam:\n\n' + pascaTanam + '\n',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify),
                    Text('Catatan:\n\n' + catatan,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify),
                  ],
                ))),
      ]),
    ));
  }
}
