import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints:  const BoxConstraints.expand (width: 400, height: 450),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: const DecorationImage(
              image: AssetImage('assets/mag2.png'), fit:BoxFit.fill,)
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 42,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Recipe Trend',
                    style: FooderlichTheme.darkTextTheme.titleLarge,
                  ),
                  const SizedBox(
                    height:16,
                  ),
                  Wrap( //여러 개 위젯을 감싸줌 -> children 사용
                    alignment: WrapAlignment.spaceBetween,
                    spacing: 30,
                    children: [
                      Chip(
                        label: Text('health'),
                      ),
                      Chip(
                        label: Text('Vegan'),

                      ),
                      Chip(
                        label: Text('Carrots'),
                      ),
                      Chip(
                        label: Text('Greens'),
                      ),
                      Chip(
                        label: Text('Wheat'),
                      ),
                      Chip(
                        label: Text('Pescetarian'),
                      ),
                      Chip(
                        label: Text('Mint'),
                      ),
                      Chip(
                        label: Text('Lemongrass'),
                      ),
                      Chip(
                        label: Text('Salad'),
                      ),
                      Chip(
                        label: Text('Water'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}