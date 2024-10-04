import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
        appBar: AppBar(
          title: Text(itemArgs.name),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: itemArgs.name,
                child: Image.network(itemArgs.imageUrl, height: 200),
              ),
              Text('Price: Rp${itemArgs.price}'),
              Text('Stock: ${itemArgs.stock} pcs'),
              Text('Rating: ${itemArgs.rating} ⭐'),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(8),
          color: Colors.grey[200],
          child: Text(
            'Nama : Bagus Arnovario Wibowo | NIM : 2241720225',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ));
  }
}
