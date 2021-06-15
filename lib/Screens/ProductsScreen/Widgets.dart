import 'package:flutter/material.dart';

Widget buildCatItem() => Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      Image( image: AssetImage("assets/food2.jpg")
        ,height: 80
        ,width: 80,
        fit: BoxFit.cover,


      ),
      SizedBox(width: 20,),
      Text("Chicken Food",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,

        ),

      ),
      Spacer(),
      Icon(Icons.arrow_forward_ios),
    ],
  ),
);