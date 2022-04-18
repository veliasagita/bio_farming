import 'dart:core';

class Komoditas {
  //variable
  String tanaman;
  String persiapan;
  String persiapanTanah;
  String? persiapanBenih;
  String pascaTanam;
  String catatan;

  Komoditas(this.tanaman, this.persiapan, this.persiapanTanah,
      this.persiapanBenih, this.pascaTanam, this.catatan);

  Komoditas.fromJson(Map<String, dynamic> json)
      : tanaman = json['tanaman'],
        persiapan = json['persiapan'],
        persiapanTanah = json['persiapanTanah'],
        persiapanBenih = json['persiapanBenih'],
        pascaTanam = json['pascaTanam'],
        catatan = json['catatan'];
  Map<String, dynamic> toJson() => {
        'tanaman': tanaman,
        'persiapan': persiapan,
        'persiapanTanah': persiapanTanah,
        'persiapanBenih': persiapanBenih,
        'pascaTanam': pascaTanam,
        'catatan': catatan
      };
}
