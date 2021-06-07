import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return RichText(
  text: TextSpan(
    style: TextStyle(fontSize: 23,),
    children: const <TextSpan>[
      TextSpan(text: 'Sawaal', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black54)),
       TextSpan(text: 'Jawaab', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)), 
    ],
  ),
);
}