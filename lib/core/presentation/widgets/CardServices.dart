// ignore: file_names
import "package:flutter/material.dart";

class CardServicesWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    _ClassServicesWidget createState() => _ClassServicesWidget();
    throw UnimplementedError();
  }
}

class _ClassServicesWidget extends State<CardServicesWidget> {  
  String saludo = "";
  void onPressed() {
  setState(() {
    saludo = "Mundo";
  });
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [Text('$saludo'), IconButton(onPressed: onPressed, icon: Icon(Icons.handshake))],
    );
    
  }
}
