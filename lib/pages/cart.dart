import 'package:flutter/material.dart';

//imports from local files
import 'package:perfect_business_services/pages/home.dart';
import 'package:perfect_business_services/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.transparent,
        title: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => new HomePage(),
            ),);
          },
          child: Text('Cart'),
        ),
        actions: [
          new IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
            ),
        ],
      ),

      body: new CartProducts(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: new Text('Total'),
                subtitle: new Text('\GH₵ 230'),
              ),
            ),
            Expanded(
              child: new MaterialButton(
                onPressed: () {},
                child: new Text('Check Out', style: TextStyle(color: Colors.white),),
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}