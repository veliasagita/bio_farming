import 'package:bio_farming/views/tanaman.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class Kategori extends StatelessWidget {
  const Kategori({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: StreamBuilder<QuerySnapshot>(
          stream: db.collection('kategori').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } 
            else {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: snapshot.data!.docs.map((doc) {
                      return Container(
                        width: 250,
                        height: 250,
                        child: ListTile(
                          title: Text(doc.get('nama') ?? doc.get('nama')),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Tanaman(doc.get('nama'), doc.id)));
                          },
                        ),
                      );
                    }).toList(),
                  ),
                ),
              );
            }
          }),
    );
  }
}
