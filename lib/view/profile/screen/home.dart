import 'package:flutter/material.dart';

class SwipePage extends StatefulWidget {
  const SwipePage({super.key});

  @override
  _SwipePageState createState() => _SwipePageState();
}

tinderSwipe(
    {required Alignment alignment,
    required int maxCount,
    required List<Card> cards,
    required Null Function(dynamic index) onSwipeLeft,
    required Null Function(dynamic index) onSwipeRight}) {}

class _SwipePageState extends State<SwipePage> {
  List<String> images = [
    'https://unsplash.com/photos/a-woman-wearing-a-hat-holding-a-coconut-go2Z8RFJGw4',
    'https://unsplash.com/photos/woman-sitting-on-chair-while-taking-photo-7MrDe9XWSag',
    'https://unsplash.com/photos/a-person-sitting-on-the-hood-of-a-car-_D0yr8PSiNg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: tinderSwipe(
          alignment: Alignment.center,
          maxCount: images.length,
          cards: images
              .map((imageUrl) => Card(
                    child: Image.network(imageUrl),
                  ))
              .toList(),
          onSwipeLeft: (index) {
            print('Swiped left on index $index');
            // Implement swipe left logic here
          },
          onSwipeRight: (index) {
            print('Swiped right on index $index');
            // Implement swipe right logic here
          },
        ),
      ),
    );
  }
}
