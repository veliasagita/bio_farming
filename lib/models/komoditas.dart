import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';

class Komoditas {
  //variable
  String tanaman;
  String persiapan;
  String pesiapanTanah;
  String? persiapanBenih;
  String pascaTanam;
  String Catatan;

  Komoditas(this.tanaman, this.persiapan, this.pesiapanTanah,
      this.persiapanBenih, this.pascaTanam, this.Catatan);

  Komoditas.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : tanaman = snapshot['tanaman'],
        persiapan = snapshot['persiapan'],
        pesiapanTanah = snapshot['pesiapanTanah'],
        persiapanBenih = snapshot['persiapanBenih'],
        pascaTanam = snapshot['pascaTanam'],
        Catatan = snapshot['Catatan'];

  Komoditas.fromJson(Map<String, dynamic> json)
      : tanaman = json['tanaman'],
        persiapan = json['persiapan'],
        pesiapanTanah = json['pesiapanTanah'],
        persiapanBenih = json['persiapanBenih'],
        pascaTanam = json['pascaTanam'],
        Catatan = json['Catatan'];
  Map<String, dynamic> toJson() => {
        'tanaman': tanaman,
        'persiapan': persiapan,
        'pesiapanTanah': pesiapanTanah,
        'persiapanBenih': persiapanBenih,
        'pascaTanam': pascaTanam,
        'Catatan': Catatan
      };
}
