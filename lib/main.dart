import 'package:flutter/material.dart';
import 'package:gdg_demo/detail.dart';
import 'package:gdg_demo/pika.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<pika> pikas = [
      new pika(
          "Bulbizarre",
          "Bulbizarre passe son temps à faire la sieste sous le soleil. Il y a une graine sur son dos. Il absorbe les rayons du soleil pour faire doucement pousser la graine.",
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png"),
      new pika(
          "Herbizarre",
          "Un bourgeon a poussé sur le dos de ce Pokémon. Pour en supporter le poids, Herbizarre a dû se muscler les pattes. Lorsqu'il commence à se prélasser au soleil, ça signifie que son bourgeon va éclore, donnant naissance à une fleur.",
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png"),
      new pika(
          "Salamèche",
          "La flamme qui brûle au bout de sa queue indique l'humeur de ce Pokémon. Elle vacille lorsque Salamèche est content. En revanche, lorsqu'il s'énerve, la flamme prend de l'importance et brûle plus ardemment.",
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png"),
      new pika(
          "Pikachu",
          "Chaque fois que Pikachu découvre quelque chose de nouveau, il envoie un arc électrique. Lorsqu'on tombe sur une Baie carbonisée, ça signifie sans doute qu'un de ces Pokémon a envoyé une charge trop forte.",
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png"),
      new pika(
          "Charmina",
          "Bulbizarre passe son temps à faire la sieste sous le soleil. Il y a une graine sur son dos. Il absorbe les rayons du soleil pour faire doucement pousser la graine.",
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png"),
      new pika(
          "Herbizarre",
          "On dit que grâce à la méditation, Charmina stocke de l'énergie dans son corps et affine son sixième sens. Ce Pokémon se cache des autres en se fondant dans les champs et les montagnes.",
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/308.png"),
      new pika(
          "Chrysacier",
          "La carapace protégeant ce Pokémon est dure comme du métal. Chrysacier ne bouge pas beaucoup. Il reste immobile pour préparer les organes à l'intérieur de sa carapace en vue d'une évolution future.",
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/011.png"),
      new pika(
          "Papilusion",
          "Papilusion est très doué pour repérer le délicieux nectar qu'il butine dans les fleurs. Il peut détecter, extraire et transporter le nectar de fleurs situées à plus de 10 km de son nid.",
          "https://assets.pokemon.com/assets/cms2/img/pokedex/full/012.png")
    ];
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: pikas.length,
        itemBuilder: (context, position) {
          return new PikaItem(pikas[position]);
        },
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class PikaItem extends StatelessWidget {
  pika p;

  PikaItem(this.p);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // Column is also layout widget. It takes a list of children and
      // arranges them vertically. By default, it sizes itself to fit its
      // children horizontally, and tries to be as tall as its parent.
      //
      // Invoke "debug painting" (press "p" in the console, choose the
      // "Toggle Debug Paint" action from the Flutter Inspector in Android
      // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
      // to see the wireframe for each widget.
      //
      // Column has various properties to control how it sizes itself and
      // how it positions its children. Here we use mainAxisAlignment to
      // center the children vertically; the main axis here is the vertical
      // axis because Columns are vertical (the cross axis would be
      // horizontal).

      children: <Widget>[
        /*new Container(
                height: 100.0,
                width: 100.0,
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(p.image_url),
                  backgroundColor: Colors.lightGreen,
                )),*/

        new Container(
            height: 100.0,
            width: 100.0,
            child: new CircleAvatar(
              backgroundImage: new NetworkImage(p.image_url),
              backgroundColor: Colors.lightGreen,
            )),
        Text(
          p.name,
          style: TextStyle(fontSize: 20.0, color: Colors.amber),
        ),
        RaisedButton(
          child: new Row(
            children: <Widget>[
              Text("void détail"),
              Icon(
                Icons.navigate_next,
              )
            ],
          ),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => new detail(p))),
          color: Colors.black26,
          disabledColor: Colors.green,
        )
      ],
    ));
    ;
  }
}
