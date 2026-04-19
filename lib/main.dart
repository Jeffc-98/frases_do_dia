import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Frases do dia"),
          centerTitle: true,
        ),
        body:Padding(
          padding: EdgeInsets.all(16),
          child: Text("Conteúdo Principal"),
        ) ,
        bottomNavigationBar: BottomAppBar(
          color: Colors.blueAccent,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Text("Texto 1"),
                Text("Texto 2")
              ],
            ),
          ),
        ),

      ),
      

    )
  );
}