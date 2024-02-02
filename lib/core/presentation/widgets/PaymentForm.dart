import "package:flutter/material.dart";

class DemoTransfersWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 150,
      width: 350,
      color: Color.fromARGB(255, 46, 13, 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Ingresa Numero de tarjeta',
            ),
          ),
        ]
      )
    );
  }
  
}