// ignore_for_file: must_be_immutable

import 'package:bio_farming/views/detail.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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
              return SafeArea(
                  child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      padding: const EdgeInsets.all(10),
                      children: snapshot.data!.docs.map((doc) {
                        return GestureDetector(
                            child: Container(
                                height: MediaQuery.of(context).size.height / 4,
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade300),
                                child: Center(
                                  child: Text(
                                    doc.get('nama') ?? doc.get('nama'),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                )),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Tanaman(doc.get('nama'), doc.id)));
                            });
                      }).toList()));
            }
          }),
    );
  }
}
