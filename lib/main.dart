import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Frases do dia"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              print("Botão clicado");
            },
            child: const Text("pcanhagit"),
          ),
        ),
      ),
    ),
  );
}
