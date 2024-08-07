import 'package:bennett_date/view/components/match-card.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class madhav extends StatelessWidget {
  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(image: AssetImage('assets/images/hottie.jpg')),
        color: Colors.blue,
      ),
      child: const Text('1'),
      
    ),
    Container(
      alignment: Alignment.center,
       decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
           color: Colors.red,
                   image: DecorationImage(image: AssetImage('assets/images/hottie.jpg')),

          ),
      child: const Text('2'),
     
    ),
    Container(
       decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.purple,
          
      ),
      alignment: Alignment.center,
      child: const Text('3'),
      
    )
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
          child: Column(
            children: [
             
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [
                  SizedBox(width: 8.w,),
                  Text('Discover', style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold

                  ),),
                ],
              ),
              Flexible(
                
                child: CardSwiper(
                  
                  allowedSwipeDirection:
                      AllowedSwipeDirection.only(left: true, right: true),
                  // padding: EdgeInsets.symmetric(vertical: 50.sp,horizontal: 35),
                  cardsCount: cards.length,
                  numberOfCardsDisplayed: 3,
                  cardBuilder:
                      (context, index, percentThresholdX, percentThresholdY) =>
                          cards[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
