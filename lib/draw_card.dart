import 'dart:math';

import 'package:flutter/material.dart';

class DrawCard extends StatefulWidget{
  const DrawCard({super.key});
  
  @override
  State<DrawCard> createState() {
   return _CardState();
  }
}

class _CardState extends State<DrawCard> {
  var cardText = ' The beginning of your journey...';
  var activeImage = 'assets/images/0.jpg';
   void drawCard(){
    var cardNum = Random().nextInt(22);
    setState(() {
      activeImage = 'assets/images/$cardNum.jpg';
    });
    
    switch (cardNum) {
      case 0: 
        cardText = 'The Fool is young, vulnerable, and unaware of life’s magnitude. Embrace openness and willingness without worry. Begin your journey with curiosity and trust';
        break;
      case 1:
        cardText = ' You are unique and possess many gifts. Use your skills to overcome adversity and start new projects. Everything you need is already within you ';
        break;
      case 2: 
        cardText= ' ';
        break;
      case 3: 
        cardText= ' ';
        break;
      case 4: 
        cardText= ' ';
        break;
      case 5: 
        cardText= ' ';
        break;
      case 6: 
        cardText= ' ';
        break;
        case 7: 
        cardText= ' ';
        break;
        case 8: 
        cardText= ' ';
        break;
        case 9: 
        cardText= ' ';
        break;
        case 10: 
        cardText= ' ';
        break;
        case 11: 
        cardText= ' ';
        break;
        case 12: 
        cardText= ' ';
        break;
        case 13: 
        cardText= ' ';
        break;
        case 14: 
        cardText= ' ';
        break;
        case 15: 
        cardText= ' ';
        break;
        case 16: 
        cardText= ' ';
        break;
        case 17: 
        cardText= ' ';
        break;
        case 18: 
        cardText= ' ';
        break;
        case 19: 
        cardText= ' ';
        break;
        case 20: 
        cardText= ' ';
        break;
        case 21: 
        cardText= ' ';
        break;
          
      default:
    }
   }

  @override
  Widget build(BuildContext context) {
  
    return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(activeImage),
              const SizedBox(height: 20),
              Text(cardText),

              TextButton(onPressed: drawCard, 
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top:20, bottom: 20),
                foregroundColor: Color.fromARGB(255, 242, 224, 246), 
                textStyle: const TextStyle(fontSize: 30)),
              child: const Text('Draw your Card'))
           ],);

  }
} 