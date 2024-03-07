import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';

class ItemPage extends StatelessWidget {
  final item;
  const ItemPage({Key? key, this.item}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product"),
        backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.network(
                item.image,
                width: 2000,
                height: 500,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20,),
              Text(item.name, 
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold),),
                SizedBox(height: 12,),
              Text(item.description),
              SizedBox(height: 20,),
              const Row(children: [
                    const Icon(Icons.star,
                        color: Color.fromARGB(238, 255, 218, 10)),
                    const Icon(Icons.star,
                        color: Color.fromARGB(238, 255, 218, 10)),
                    const Icon(Icons.star,
                        color: Color.fromARGB(238, 255, 218, 10)),
                        const Icon(Icons.star,
                        color: Color.fromARGB(238, 255, 218, 10)),
                        SizedBox(width: 10,),
                                            Text(
                      "0,5",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(239, 0, 0, 0)),
                    ),
              ]),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 232, 232, 232),
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('deskripsi' ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 20,),
                  Text('Coffe, merupakan minuman yang sering di konsumsi sebagian besar warga indonesia, karena proses pengolahannya yang mudah dan rasanya banyak di gemari. Jenis kopi di indonesia termasuk banyak, kopi paling di gemari adalah kopi luak.', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
                ],
                ),
              ),
              SizedBox(height: 20,),
              Text('category', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              SizedBox(height: 15,),
              Row(
                children: [
                   Chip(label: 
              const Text("berbayar", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              backgroundColor: Colors.black,
              ),
              SizedBox(width: 12,),
              Chip(label: 
              const Text("free ongkir", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              backgroundColor: Colors.black,
              ),
              SizedBox(width: 12,),
              Chip(label: 
              
              const Text("garansi segar", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              backgroundColor: Colors.black,
              
              ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
             ElevatedButton(
    onPressed: () {},
    child: Text('beli sekarang'),
    style: ElevatedButton.styleFrom(
      primary: Colors.black,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 700),
      shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20)), 
    ),
  ),

  ]),
          ),
        );
  }
}