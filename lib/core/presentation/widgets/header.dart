import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        children: [
          CircleAvatar(
                radius: 50,
                child: Image.asset("assets/images/profile.png", height: 200.0),
              ),
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hola", 
              style: TextStyle(
                fontSize: 14.0, 
                fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'Poppins'),),
              Text("Breney Correa", style: TextStyle(
                fontSize: 20.0, 
                fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'Poppins'),),
            ],
          ),
          ),
          Spacer(),
          IconButton(onPressed: (){

          }, icon: Icon(Icons.settings, size: 27.0, color: Colors.white,))
      ],
      ),
      color: Color(0xff202731),
    );
  }

}