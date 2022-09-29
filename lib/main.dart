import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List phrases = [
    'Melhores amigos, na verdade, são irmãos que por algum erro não caíram na nossa família.',
    'Não tenha medo de tentar, tenha medo de não tentar e ver que a vida passou e você não se arriscou como deveria.',
    'Eles querem que você se sinta mal, pois assim eles se sentem bem.',
    'É impossível encontrar o amor sem perder a razão.',
    'Mas se for pra falar de algo bom, eu sempre vou lembrar de você.',
    'Sempre terá alguma “dor” em você, mas nunca desista. Você quer, você pode, é só superar.',
    'Aprendendo com o tempo o que ninguém foi capaz de ensinar.',
  ];

  var phrasesGenerater = "Pressione para gerar uma nova frase";

  void generatorPhrase() {
    var numberRandom = Random().nextInt(phrases.length);
    setState(() {
      phrasesGenerater = phrases[numberRandom];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Frases do dia", style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.textsms_rounded,
              size: 180,
              color: Colors.grey,
            ),
            Text(
              "${phrasesGenerater}",
              style: TextStyle(fontSize: 19),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: generatorPhrase,
              child: Text("NOVA FRASE"),
            ),
          ],
        ),
      ),
    );
  }
}
