import 'dart:core';
import 'sebelum_tanam.dart';

class Komoditas {
  //variable
  String tanaman;
  String persiapan;
  SebelumTanam sebelumTanam;
  String pascaTanam;
  String catatan;

  Komoditas(this.tanaman, this.persiapan, this.sebelumTanam, this.pascaTanam,
      this.catatan);

  Komoditas.fromJson(Map<String, dynamic> json)
      : tanaman = json['tanaman'],
        persiapan = json['persiapan'],
        sebelumTanam = json['sebelumTanam'],
        pascaTanam = json['pascaTanam'],
        catatan = json['catatan'];
  Map<String, dynamic> toJson() => {
        'tanaman': tanaman,
        'persiapan': persiapan,
        'sebelumTanam': sebelumTanam,
        'pascaTanam': pascaTanam,
        'catatan': catatan
      };
}
