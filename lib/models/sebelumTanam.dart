import 'dart:core';

class SebelumTanam {
  String persiapanTanah;
  String? persiapanBenih;

  SebelumTanam(this.persiapanTanah, this.persiapanBenih);

  SebelumTanam.fromJson(Map<String, dynamic> json)
      : persiapanTanah = json['persiapanTanah'],
        persiapanBenih = json['persiapanBenih'];
  Map<String, dynamic> toJson() =>
      {'persiapanTanah': persiapanTanah, 'persiapanBenih': persiapanBenih};
}
