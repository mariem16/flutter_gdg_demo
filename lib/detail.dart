import 'package:flutter/material.dart';
import 'package:gdg_demo/pika.dart';

class detail extends StatefulWidget {
  pika p;

  detail(this.p);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return detailState();
  }
}

class detailState extends State<detail> {
  bool _isFav = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );
    //...

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.p.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Center(
              child: Hero(
                tag: widget.p.name,
                child: Image(
                  height: 200.0,
                  image: new NetworkImage(widget.p.image_url),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  widget.p.description,
                )),
            buttonSection
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[100],
          child: _isFav
              ? Icon(
                  Icons.favorite,
                )
              : Icon(
                  Icons.favorite_border,
                ),
          onPressed: () => setState(() {
                _isFav = !_isFav;
              })),
    );
  }
}
