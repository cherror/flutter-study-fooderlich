import 'package:flutter/material.dart';
import 'author_card.dart';
import 'circle_image.dart';
import 'fooderlich_theme.dart';
import 'dart:math' as math;

class Card2 extends StatelessWidget {
  const Card2({super.key});

  final String name = 'Mike Katz';
  final String className = 'Smoothie Connoisseur';
  final String smoothies = 'Smoothies';
  final String recipe = 'Recipe';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(width: 400, height: 450),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                image: AssetImage('assets/mag5.png'),
                fit: BoxFit.cover,
              )),
          child:Column(
            children: [
              AuthorCard(
                  authorName: name,
                  title: className,
                  imageProvider: AssetImage('assets/author_katz.jpeg')
              ),
              Expanded( //Expanded는 column or row 위젯에서 사용
                //column은 위아래, row는 좌우로 위젯을 배치하는데,
                // expended 안에서 row만 있으면 나머지는 expended 내의 item이 채움
                child: Row( //대신 column or row 안에는 child 통해서 여러 위젯 넣기 가능
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 32.0),
                      child: RotatedBox(
                        quarterTurns:3, //quarterTurns = 1/4씩 turns and 3 times
                        child: Text(
                          '$smoothies',
                          style: FooderlichTheme.lightTextTheme.displayLarge,
                        ),
                      ),
                    ),
                    Text(
                      '$recipe',
                      style: FooderlichTheme.lightTextTheme.displayLarge,
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}