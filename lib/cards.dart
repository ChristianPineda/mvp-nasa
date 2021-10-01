import 'package:flutter/material.dart';

import 'api/models.dart';

class Cards extends StatelessWidget {
  final Asteroid asteroid;

  const Cards({Key? key, required this.asteroid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Card(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: Colors.black),
            padding: EdgeInsets.all(10),
            child: Text("Nombre: ${asteroid.name}",
            style: TextStyle(fontSize: 20,color: Colors.white,),
            ),
          ),
        ),
      ),
    );
  }
}