import 'package:flutter/material.dart';
import 'details.dart';

class ItemCard extends StatelessWidget {
  final String id, nama;

  const ItemCard({Key? key, required this.id, required this.nama}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Details(
          id: id,
          nama: nama,
        )));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          width: double.infinity,
          color: Colors.cyan,
          child: Column(
            children: [Text(nama)],
          ),
        ),
      ),
    );
  }
}