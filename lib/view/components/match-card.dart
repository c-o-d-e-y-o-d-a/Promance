import 'package:flutter/material.dart';

class MatchCard extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String course;
  final String year;
  final String lookingFor;
  MatchCard(
      {super.key,
      required this.imgUrl,
      required this.name,
      required this.course,
      required this.year,
      required this.lookingFor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(image: AssetImage('assets/images/hottie.jpg')),
                color: Colors.blue,
              ),
              child: const Text('1'),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
              child: Row(
                children: [
                  Text(name),
                  Spacer(),
                  Text(course),
                  Spacer(),
                  Text(year),
                  Spacer(),
                  Text(lookingFor)

                ]
                
                
              ),
            ))
          ],
        ),
      ],
    );
  }
}
