import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl: '/images/Sugar.jpg',
      stock: 100,
      rating: 4.9,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl: '/images/Salt.jpg',
      stock: 100,
      rating: 4.7,
    ),
    Item(
      name: 'KTM',
      price: 1000,
      imageUrl: '/images/KTM.jpg',
      stock: 1,
      rating: 5.0,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shopping List'),
        ),
        body: GridView.builder(
          padding: EdgeInsets.all(8),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Column(
                  children: [
                    Hero(
                      tag: item.name,
                      child: Image.network(item.imageUrl,
                          fit: BoxFit.cover, height: 100),
                    ),
                    Text(item.name),
                    Text('Price: Rp${item.price}'),
                    Text('Stock: ${item.stock} pcs'),
                    Text('Rating: ${item.rating} ⭐'),
                  ],
                ),
              ),
            );
          },
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
