import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var Products_on_the_cart = [
    {
      "name": "Pants",
      "picture": "images/products/pants2.jpeg",
      "price": "GH₵ 50",
      "size": "M",
      "colour": "Red",
      "quantity": 1,
    },
    {
      "name": "shoe1",
      "picture": "images/products/shoe1.jpg",
      "price": "GH₵ 20",
      "size": "XL",
      "colour": "White",
      "quantity": 21,
    },
  ];

  @override
  Widget build(BuildContext context) {
//    we are returning a listview that will display our products itemCount the number of the products
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_size: Products_on_the_cart[index]["size"],
            cart_prod_colour: Products_on_the_cart[index]["colour"],
            cart_prod_quantity: Products_on_the_cart[index]["quantity"],
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_colour;
  final cart_prod_quantity;

  SingleCartProduct(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_colour,
      this.cart_prod_quantity});

  @override
  Widget build(BuildContext context) {
    return Card(
            child: ListTile(
//      ==============Leading Section for images=====================
          leading: new Image.asset(
            cart_prod_picture,
            width: 80.0,
            height: 80.0,
          ),

//      ==============Title Section for the title of the product=====================
          title: new Text(cart_prod_name),

//      ==============Subtitle Section for the subtitles of the product=====================
          subtitle: new Column(
            children: [
              new Row(
                children: [
//         =========Size section  for the product=========
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: new Text("Size:"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: new Text(
                      cart_prod_size,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),

//         =============Colour section for the =============
                  new Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 8.0, 0.0, 8.0),
                    child: new Text("Colour:"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(
                      "$cart_prod_colour",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),

//  =======Product Price section for the product price=======
              new Container(
                alignment: Alignment.topLeft,
                child: new Text(
                  cart_prod_price,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          trailing: new Column(children: [
            new IconButton(
              icon: Icon(Icons.arrow_drop_up),
              onPressed: () {},
            ),
            new Text("$cart_prod_quantity"),
            new IconButton(
              icon: Icon(Icons.arrow_drop_down),
              onPressed: () {},
            ),
          ]),
        ),
    );
  }
}
