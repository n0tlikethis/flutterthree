import 'package:flutter/material.dart';

import 'package:navy/models/item.dart';
import 'package:navy/widgets/card.dart';
import 'package:navy/widgets/hero.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Nike Court Vision Low Next Nature',
        price: 799000,
        desc:
            'In love with the classic look of \'80s basketball but have a thing for the fast-paced culture of today\'s game? Meet the Nike Court Vision Low. A classic remixed with at least 20% recycled materials by weight, its crisp upper and stitched overlays keep the soul of the original style. The plush, low-cut collar keeps it sleek and comfortable for your world.',
        image: 'assets/images/nike-court-vision-lo-nn.jpg'),
    Item(
        name: 'Nike Air Force 1 \'07',
        price: 1549000,
        desc:
            'The radiance lives on in the Nike Air Force 1 \'07, the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.',
        image: 'assets/images/air-force1-07.jpg',
        wish: true),
    Item(
        name: 'Nike Court Vision Low',
        price: 1069000,
        desc:
            'In love with the retro look of \'80s basketball but have a thing for the fast-paced culture of today\'s game? Meet the Court Vision Low. A classic remixed, its crisp upper and stitched overlays keep the soul of the original style. The plush, low-cut collar keeps it sleek and comfortable for your world.',
        image: 'assets/images/nike-court-vision-lo.jpg'),
    Item(
        name: 'Nike Dunk Low',
        price: 1338000,
        desc:
            'Created for the hardwood but taken to the streets, this \'80s basketball icon returns with classic details and throwback hoops flair. The synthetic leather overlays help the Nike Dunk channel vintage style while its padded, low-cut collar lets you take your game anywhere—in comfort.',
        image: 'assets/images/nike-dunk-low-nn.jpg'),
    Item(
        name: 'Nike P-6000',
        price: 1729000,
        desc:
            'A mash-up of past Pegasus sneakers, the P-6000 takes early-2000s running to modern heights. Featuring airy mesh and sporty lines, it\'s the perfect mix of head-turning looks and breathable comfort. Plus, its foam cushioning adds a lifted, athletics-inspired stance and unbelievable cushioning.',
        image: 'assets/images/wmns-nike-p-6000.jpg',
        wish: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.menu),
        title: const Text('Home', style: TextStyle(fontSize: 20)),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            const ItemHero(image: 'assets/images/air-jordan-1-low.jpg'),
            const SizedBox(height: 20),
            Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/item',
                                arguments: item);
                          },
                          borderRadius: BorderRadius.circular(24),
                          child: ItemCard(image: item.image, wish: item.wish));
                    }))
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        height: 50,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Dani Daneswara'),
            VerticalDivider(),
            Text('362358302048')
          ],
        )),
      ),
    );
  }
}
