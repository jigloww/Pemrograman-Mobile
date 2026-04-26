import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:go_router/go_router.dart';                     // Import GoRouter for navigation

class MyHomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: '2 Varian Rasa', 
      price: 20000,
      foto: 'images/paket2.jpeg',
      stok: 10,
      rating: 4.8
    ),
    Item(
      name: '3 Varian Rasa', 
      price: 30000,
      foto: 'images/paket3.jpeg',
      stok: 15,
      rating: 4.9
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tanggaq - 244107060126'),
        backgroundColor: const Color.fromARGB(174, 191, 243, 33),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                context.push('/item', extra: item);   // Navigasi dengan GoRouter
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Expanded(
                        flex : 3,                                // 60% untuk gambar
                        child: Hero(                             // Hero Anmation
                          tag: 'product_${item.name}',          // Tag unik
                          child: Container(
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                              child: Image.asset(               // Gambar produk
                                item.foto,                      // Foto
                                fit: BoxFit.cover,
                              ),
                            )
                          ),
                        )
                      ),
                      Expanded(
                        flex: 2,                                  // 40% untuk info
                        child: Padding(
                          padding : EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(item.name,),                    // ← nama produk
                              Text('Rp ${item.price}',),          // ← harga produk
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.star, color: Colors.orange, size: 14),
                                  SizedBox(width: 2),
                                  Text(item.rating.toString()),   //rating produk
                                ],
                              ),
                              Text('Stok: ${item.stok}'),         // ← STOK
                            ],
                          ),
                        )
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

