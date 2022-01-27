import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  final TextEditingController nama = TextEditingController();

  Future<void> simpan() async{
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference kategori = firestore.collection("kategori");

    await kategori.add({
      "nama": nama.text,
    });
    print("Data Tersimpan");
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
      ),
      body: Container(
        child: ListView(
          children: [
            TextFormField(
              controller: nama,
              decoration: InputDecoration(
                labelText: "nama",
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: ()=>simpan(),
                child: Container(
                height: 60,
                width: 150,
                color: Colors.blue,
                child: Center(
                  child: Text("Simpan"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}