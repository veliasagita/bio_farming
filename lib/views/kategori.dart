// import 'package:flutter/material.dart';

// class Kategori extends StatelessWidget {
//   const Kategori({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Bio Farming")),

//     );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  const Kategori({Key? key}) : super(key: key);

  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  final firestoreInstance = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    Iterable value = [];
    firestoreInstance.collection("kategori").get().then((querySnapshot) {
      for (var result in querySnapshot.docs) {
        value = result.data().values;
      }
    });
    return Scaffold(
      appBar: AppBar(title: const Text("Bio Farming")),
      // body: AnimatedList(

      // ),
    );
  }
}
