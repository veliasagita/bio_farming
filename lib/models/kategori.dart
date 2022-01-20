import 'dart:core';

class Kategori {
  final String id;
  final String nama;

  Kategori(this.id, this.nama);

  Kategori.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        nama = json['nama'];

  Map<String, dynamic> toJson() => {'id': id, 'nama': nama};
}
