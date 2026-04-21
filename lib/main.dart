import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));


}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "A persistência é o caminho do êxito.",
    "O sucesso é a soma de pequenos esforços repetidos dia após dia.",
    "Acredite em si mesmo e todo o resto virá naturalmente.",
    "A única maneira de fazer um excelente trabalho é amar o que você faz.",
    "O futuro pertence àqueles que acreditam na beleza de seus sonhos."
  ];
  var _fraseGerada = "Clique para gerar uma frase!";

  void _gerarfrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
   
    setState(() {
       _fraseGerada = _frases[numeroSorteado];
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "Frases do dia",
           style: TextStyle(color: Colors.white
           )),
      ),
      body: Center(
        child: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "images/logo.png"
              ),
            Text(
              _fraseGerada,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 17,
              fontStyle: FontStyle.italic,
              color: Colors.black
            ),
            ),
              ElevatedButton(
                onPressed: _gerarfrase,
                child: const Text(
                  "Gerar frase",
                  ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
              )
            ),
           ),
         ],
        ),
      ),
     )
    );
  }
}
