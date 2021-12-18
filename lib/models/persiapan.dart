import 'dart:core';

class Persiapan {
  String persiapanTanah;
  String? persiapanBenih;

  Persiapan(this.persiapanTanah, this.persiapanBenih);

  Persiapan.fromJson(Map<String, dynamic> json)
      : persiapanTanah = json['persiapanTanah'],
        persiapanBenih = json['persiapanBenih'];
  Map<String, dynamic> toJson() =>
      {'persiapanTanah': persiapanTanah, 'persiapanBenih': persiapanBenih};
}
