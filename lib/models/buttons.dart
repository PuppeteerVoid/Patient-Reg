import 'package:flutter/material.dart';

class Actionbutton extends StatelessWidget {
  const Actionbutton({super.key, required this.elevatedButtonTitle, required this.onPress});
  final String elevatedButtonTitle;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
         SizedBox(height: mediaQuery.height * 0.02,),
        ElevatedButton(onPressed: onPress, child: Text(elevatedButtonTitle, style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w500, color: Colors.white),), style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                 shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(10),
             ),
                ),),
      ],
    );
  }
}