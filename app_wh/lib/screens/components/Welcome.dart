import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Text('Ajouter votre message ',style: TextStyle(color:Colors.green,fontWeight: FontWeight.w200 ,fontSize:30),)
        ],
      ) ,
    );
  }
}
