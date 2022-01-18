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
    var list = [];
    firestoreInstance.collection("kategori").get().then((querySnapshot) {
      // print(querySnapshot.docs.sublist(0));
      // print(querySnapshot);
      // querySnapshot.docs.forEach((result) {
        // print(result.data());
        // Iterable value = result.data().values;
        // list.add(value); //ini blm masuk array
      // });
      
    });
    return Scaffold(
      appBar: AppBar(title: const Text("Bio Farming")),
      // body: AnimatedList(

      // ),
    );
  }
}
