import 'package:flutter/material.dart';
import 'package:gdg_demo/detail.dart';
import 'package:gdg_demo/pika.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pink),
      title: 'GDG',
      home: MyHomePage('GDG'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String title;

  MyHomePage(this.title);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView.builder(
        itemCount: pikas.length,
        itemBuilder: (context, position) {
          return new PikaItem(pikas[position], position);
        },
      ),
    );
  }
}

class PikaItem extends StatelessWidget {
  pika p;
  int position;

  PikaItem(this.p, this.position);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 100.0,
        child: Card(
            child: InkWell(
                highlightColor: Colors.blueAccent[100],
                splashColor: Colors.blue[900],
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new detail(p))),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Hero(
                        child: new Image(
                          image: new NetworkImage(p.image_url),
                        ),
                        tag: p.name,
                      ),
                      Center(
                          child: Text(
                        p.name,
                        textAlign: TextAlign.center,
                        //style: Theme.of(context).textTheme.headline,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      )),
                    ],
                  ),
                ))));
    ;
  }
}
