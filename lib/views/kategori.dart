import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Kategori extends StatelessWidget {
  const Kategori({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
          stream: db.collection('kategori').snapshots(),
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
