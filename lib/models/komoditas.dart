import 'dart:core';
import 'persiapan.dart';

class Komoditas {
  //variable
  String tanaman;
  Persiapan persiapan;
  String pascaTanam;
  String catatan;

  Komoditas(this.tanaman, this.persiapan, this.pascaTanam, this.catatan);

  Komoditas.fromJson(Map<String, dynamic> json)
      : tanaman = json['tanaman'],
        persiapan = json['persiapan'],
        pascaTanam = json['pascaTanam'],
        catatan = json['catatan'];
  Map<String, dynamic> toJson() => {
        'tanaman': tanaman,
        'persiapan': persiapan,
        'pascaTanam': pascaTanam,
        'catatan': catatan
      };
}
