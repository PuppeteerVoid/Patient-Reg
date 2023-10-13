import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTextBox extends StatelessWidget {
  const InputTextBox({super.key, required this.title, required this.controller});
  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
     var mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
         SizedBox(height: mediaQuery.height * 0.015,),
        TextFormField(
          cursorColor: Colors.purple,
           validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter the $title';
    }
    return null;
  },
          controller: controller,
          maxLines: 70,
          minLines: 1,
          decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.purple, fontSize: mediaQuery.width * 0.015),
                labelText:title,
            enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                   borderSide: BorderSide( width: 2)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.purple, width: 3)
                )
          ),
        ),
        SizedBox(height: mediaQuery.height * 0.013,),
      ],
    );
  }
}

class InputNumberBox extends StatelessWidget {
  const InputNumberBox({super.key, required this.title, required this.controller});
  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
        var mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: mediaQuery.height * 0.02,),
        TextFormField(
          cursorColor: Colors.purple,
           validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter the $title';
    }
    return null;
  },
                  controller: controller,
           keyboardType: TextInputType.number,
           inputFormatters: [FilteringTextInputFormatter.digitsOnly],
           maxLines: 10,
           minLines: 1,
          decoration: InputDecoration(
            labelStyle: TextStyle(color:  Colors.purple,),
            labelText:title,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
               borderSide: BorderSide( width: 2,)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.purple, width: 3),
            )
          ),
        ),
      ],
    );
  }
}