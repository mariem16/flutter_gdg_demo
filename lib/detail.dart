import 'package:flutter/material.dart';
import 'package:gdg_demo/pika.dart';

class detail extends StatelessWidget {
  pika p;

  detail(this.p);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(p.name),
      ),
      body: Column(
        children: <Widget>[
          new Center(
              child: Container(
            height: 200.0,
            decoration: BoxDecoration(
                image: DecorationImage(image: new NetworkImage(p.image_url))),
          )),
          Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                p.description,
                style: TextStyle(fontStyle: FontStyle.italic),
              ))
        ],
      ),
    );
  }
}
