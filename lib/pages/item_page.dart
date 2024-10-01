import 'package:flutter/material.dart';
import 'package:navy/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    // helpers
    String formatCurrency(int amount) {
      String formatted = amount.toString();
      StringBuffer result = StringBuffer();

      int length = formatted.length;
      for (int i = 0; i < length; i++) {
        // Add comma every three digits from the right
        if (i > 0 && (length - i) % 3 == 0) {
          result.write('.');
        }
        result.write(formatted[i]);
      }

      return 'Rp $result,00'; // Append
    }

    // Title section
    Widget titleSection = Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      itemArgs.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                Text(
                  formatCurrency(itemArgs.price),
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            )),
            Icon(
              itemArgs.wish ? Icons.favorite : Icons.favorite_border,
              color: itemArgs.wish ? Colors.red[400] : Colors.black,
            ),
          ],
        ));

    // Button section
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: MaterialButton(
      onPressed: () {
        // Button action
        print("Pill Button Pressed");
      },
      shape: StadiumBorder(),
      color: Colors.black,
      textColor: Colors.white,
      height: 50,
      child: Text('Add to Bag'),
    ));

    // Text section
    Widget textSection = Container(
      padding: const EdgeInsets.all(16),
      child: Text(
        itemArgs.desc,
        softWrap: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Detail Produk', style: TextStyle(fontSize: 20)),
      ),
      body: ListView(
        children: [
          Image.asset(
            itemArgs.image,
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }
}
