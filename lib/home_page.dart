import 'package:flutter/material.dart';
import 'package:nasacards/api/service.dart';
import 'package:nasacards/cards.dart';

import 'api/models.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Service service = Service();

  DateTime startDate =
      DateTime.now(); //Para que cargue lo actual, de hoy a hoy, inicio y fin
  DateTime endDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Text('Asteroides'),
            Expanded(
              child: FutureBuilder(
                future: service.getAsteroids(startDate, endDate),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting)
                    return LinearProgressIndicator();

                  var data = snapshot.data as List<Asteroid>?;

                  if (data == null) return Text("Error");

                  return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      var currentObject = data[index];
                      return Cards(asteroid: currentObject);
                    },
                  );
                },
              ),
            ),
          ],
        )
    );
  }
}
