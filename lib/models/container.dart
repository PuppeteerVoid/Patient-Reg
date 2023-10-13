import 'package:flutter/material.dart';

class ContainerBox extends StatelessWidget {
  const ContainerBox({super.key, required this.title,});
  final String title;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: mediaQuery.height * 0.040,),
        Container(
          width: mediaQuery.width * 0.6,
          height: mediaQuery.height * 0.1,
          decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text(title, style: TextStyle(fontSize: mediaQuery.width * 0.030, fontWeight: FontWeight.w600),)),
        ),
         SizedBox(height: mediaQuery.height * 0.035,),
      ],
    );
  }
}