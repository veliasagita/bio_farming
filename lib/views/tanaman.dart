import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class Tanaman extends StatelessWidget {
  String namaKategori;
  String id;

  Tanaman(this.namaKategori, this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
          stream: db
              .collection('kategori')
              .doc(id)
              .collection(namaKategori)
              .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView(
                children: snapshot.data!.docs.map((doc) {
                  return Card(
                    child: ListTile(
                      title: Text(doc.get('nama') ?? doc.get('nama')),
                    ),
                  );
                }).toList(),
              );
            }
          }),
    );
  }
}
