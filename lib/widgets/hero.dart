import 'package:flutter/material.dart';

class ItemHero extends StatelessWidget {
  final String image;

  const ItemHero({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(.4),
              Colors.black.withOpacity(.2)
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const Text(
              "October Sale",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Center(
                  child: Text(
                "Shop Now",
                style: TextStyle(
                    color: Colors.grey[900], fontWeight: FontWeight.bold),
              )),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
