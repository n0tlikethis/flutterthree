import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String image;
  final bool wish;

  const ItemCard({super.key, required this.image, required this.wish});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
          child: Transform.translate(
            offset: const Offset(50, -50),
            child: Container(
              width: 30,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(),
              child: Center(
                child: Icon(wish ? Icons.favorite : Icons.favorite_border,
                    size: 22, color: wish ? Colors.red[400] : Colors.black),
              ),
            ),
          ),
        ));
  }
}
