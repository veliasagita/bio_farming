import 'package:flutter/material.dart';

class Tombol extends StatelessWidget {
  final Function hapus, edit;

  const Tombol({Key? key, required this.hapus, required this.edit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.green,
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: edit(),
            child: Container(
              width: 130,
              color: Colors.white,
              child: Center(child: Text("Update data")),
            ),
          ),
          InkWell(
            onTap: hapus(),
            child: Container(
              width: 130,
              color: Colors.white,
              child: Center(child: Text("Hapus")),
            ),
          ),
        ],
      ),
    );
  }
}