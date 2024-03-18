import 'package:flutter/material.dart';
import 'package:flutter_application_test/styled_text.dart';


class GradientContainer extends StatelessWidget{
 
  GradientContainer({super.key, required this.colors}){
    //Initialization and Comment
  }
   final List<Color> colors;
  @override
  Widget build(context){
    return Container(
        decoration:  BoxDecoration(
          gradient:  LinearGradient(
            colors: 
            colors,
            begin: Alignment.topLeft, end: Alignment.bottomRight
            )
        ),
        child: const Center(
          child: StyledText("Hi"),
        ),
      );
    
  }
}