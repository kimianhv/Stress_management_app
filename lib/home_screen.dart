import 'package:flutter/material.dart';

class HomeScreenList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white,
      child:Column(
        children: [
          Container(
            color: Colors.amber,
            height: 100,

          ),
          Container(
            color: Colors.tealAccent,
            height: 150,

          ),
          Container(
            color: Colors.pinkAccent,
            height: 200,
            width: 200,

          )
        ],
      ),
    );
  }


}