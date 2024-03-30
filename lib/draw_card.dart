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
        cardText = 'The Fool is young, vulnerable, and unaware of life’s magnitude. \n Embrace openness and willingness without worry. Begin your journey with curiosity and trust';
        break;
      case 1:
        cardText = ' You are unique and possess many gifts. \n Use your skills to overcome adversity and start new projects. Everything you need is already within you ';
        break;
      case 2: 
        cardText= ' Intuitive and connected, she urges you to listen to your inner voice. Trust your instincts; answers lie within. Seek guidance from your own mind  ';
        break;
      case 3: 
        cardText= ' Deeply feminine, she embodies compassion, beauty, and love. Connect with Mother Nature’s energy. Nurture and create with her influence ';
        break;
      case 4: 
        cardText=  ' Represents authority, stability, and structure. Embrace leadership and responsibility. Balance power with compassion and wisdom ';
        break;
      case 5: 
        cardText= ' Symbolizes tradition, spirituality, and guidance. Seek wisdom from established systems and teachers. Honor rituals and beliefs ';
        break;
      case 6: 
        cardText= ' Love, relationships, and choices. Balance heart and mind. Make decisions that align with your true self and values  ';
        break;
        case 7: 
        cardText= ' Triumph over challenges. Drive forward with determination and control. Balance opposing forces to achieve victory ';
        break;
        case 8: 
        cardText= ' Inner strength, courage, and patience. Tame your inner beast. Use compassion and gentleness to overcome obstacles ';
        break;
        case 9: 
        cardText= ' Solitude, introspection, and inner guidance. Seek answers within. Withdraw to find wisdom and enlightenment ';
        break;
        case 10: 
        cardText= ' Cycles, fate, and change. Life’s ups and downs. Embrace the ever-turning wheel with grace and adaptability ';
        break;
        case 11: 
        cardText= ' Fairness, balance, and truth. Seek justice and integrity. Make decisions based on reason and ethics ';
        break;
        case 12: 
        cardText= ' Surrender, sacrifice, and perspective. Shift your view. Sometimes, letting go leads to enlightenment ';
        break;
        case 13: 
        cardText= ' Transformation, rebirth, and release. Endings pave the way for new beginnings. Embrace change and growth ';
        break;
        case 14: 
        cardText= ' Harmony, balance, and moderation. Blend opposites. Find equilibrium and healing ';
        break;
        case 15: 
        cardText= ' Temptation, materialism, and bondage. Break free from unhealthy patterns. Confront fears and illusions  ';
        break;
        case 16: 
        cardText= ' Sudden upheaval, revelation, and destruction. Chaos leads to transformation. Embrace change despite discomfort  ';
        break;
        case 17: 
        cardText= ' Hope, inspiration, and healing. Follow your guiding star. Trust in renewal and cosmic energy ';
        break;
        case 18: 
        cardText= ' Intuition, mystery, and emotions. Navigate the subconscious. Embrace uncertainty and dreamlike states ';
        break;
        case 19: 
        cardText= ' Joy, vitality, and clarity. Bask in positivity. Illuminate your path with confidence and warmth ';
        break;
        case 20: 
        cardText= ' Self-reflection, awakening, and accountability. Evaluate your choices. Rise to a higher level of consciousness ';
        break;
        case 21: 
        cardText= ' Completion, fulfillment, and unity. Celebrate achievements. You are part of a greater whole ';
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
              
              Text(cardText,
              textAlign: TextAlign.center,
              ),

              TextButton(onPressed: drawCard, 
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top:20, bottom: 20),
                foregroundColor: Color.fromARGB(255, 255, 255, 255), 
                textStyle: const TextStyle(fontSize: 36)),
              child: const Text('Draw your Card'))
           ],);

  }
} 