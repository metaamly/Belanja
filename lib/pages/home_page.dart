import 'package:flutter/material.dart';
import 'package:flutter_application_4/pages/item_page.dart';

import '../models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name:'Sugar', price: 5000, description: 'Sweet', image: 'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2024/02/22/Gula-Putih-2534206910.jpg' ),
    Item(name: 'Salt', price: 2000, description: 'Salty', image: 'https://res.cloudinary.com/dk0z4ums3/image/upload/v1684110588/attached_image/garam-lososa-garam-rendah-sodium-yang-lebih-sehat-bagi-tubuh.jpg'),
    Item(name: 'Coffee', price: 7000, description: 'Bitter', image: 'https://www.gordi.id/cdn/shop/articles/Blog_post_b1970e5e-e230-416a-8f41-e0a21c467f0f_2048x.png?v=1531806915'),
    Item(name: 'Chilli', price: 10000, description: 'Spicy', image: 'https://images.tokopedia.net/img/cache/700/VqbcmM/2020/6/20/a44ba65b-58ff-449b-b466-27db01084ff2.jpg'),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {

            final item = items[index];
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(item.image),
                ),
                title: Text(
                  item.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(item.description),
                trailing: Text(item.price.toString()),
                onTap: (){ 
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => ItemPage(item: items[index]),
                      ),
                      );
                },
              
                          ),
                        );
          }),
      ));
  }
}    