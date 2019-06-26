import 'package:flutter/material.dart';

//imports from local files
import 'package:perfect_business_services/pages/home.dart';
import 'package:perfect_business_services/pages/cart.dart';

class ProductsDetail extends StatefulWidget {

  final products_detail_name;
  final products_detail_new_price;
  final products_detail_old_price;
  final products_detail_picture;

  ProductsDetail({
    this.products_detail_name,
    this.products_detail_new_price,
    this.products_detail_old_price,
    this.products_detail_picture});

  @override
  _ProductsDetailState createState() => _ProductsDetailState();
}

class _ProductsDetailState extends State<ProductsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//    here our appBar would navigate to the homepage when clicked by the help of inkWell
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: InkWell(
          onTap: () {Navigator.push(context, MaterialPageRoute(
            builder: (context) => new HomePage()),);},
          child: Text('Perfect Business Services'),
          ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
            ),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.products_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.products_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child :new Text("\GH₵ ${widget.products_detail_old_price}",
                        style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                      ),
                      Expanded(
                        child :new Text("\GH₵ ${widget.products_detail_new_price}" , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

//      =======the first buttons=======          
          new Row(
            children: <Widget>[
//      =========the size button========
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context, builder: (context) {
                      return new AlertDialog(
                        title: new Text('Size'),
                        content: new Text('Choose the size'),
                        actions: <Widget>[
                          new MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: new Text('close'),
                          )
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text('Size'),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

//      =========the Colour button========
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context, builder: (context) {
                      return new AlertDialog(
                        title: new Text('Colour'),
                        content: new Text('Choose the colour'),
                        actions: <Widget>[
                          new MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: new Text('close'),
                          )
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text('Colour'),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
//      =========the Quantity button========
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context, builder: (context) {
                      return new AlertDialog(
                        title: new Text('Quantity'),
                        content: new Text('Choose the quantity'),
                        actions: <Widget>[
                          new MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: new Text('close'),
                          )
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text('Qty'),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),                            
            ],
          ),
//      =======the second buttons=======          
          new Row(
            children: <Widget>[
//      =========the size button========
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text('Buy now')
                  ),
                ),
                new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.red, onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Cart(),
                  ));
                },),
                new IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: () {},),
            ],
          ),
          Divider(color: Colors.black,),
          new ListTile(
            title: Text('Product Details'),
            subtitle: new Text('Bootstrap is the most favored and dynamically evolving front-end framework.It became the undeniable leader in web design. It is used and appreciated by millions of programmers across the world. It is hard to find a more effective tool than Bootstrap. Considering its progressive development and the snowballing upsurge of projects based on this framework, every web designer or developer should at least be familiar with the basics of Bootstrap.'),
          ),
          Divider(color: Colors.black,),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text('Product name', style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.products_detail_name),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text('Product brand', style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text('Brand X'),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text('Product condition', style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text('New'),
              ),
            ],
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Similar Products'),
          ),

//        Similar products
          new Container(
            height: 340.0,
            child: Similar_products(),
          ),
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [ 
    {
      "name": "Pants",
      "picture": "images/products/pants2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "hills1",
      "picture": "images/products/hills1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "skt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "shoe1",
      "picture": "images/products/shoe1.jpg",
      "old_price": 100,
      "price": 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text('hero 1'),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
//             here we passing the values of the product to product details           
              builder: (context) => new ProductsDetail(
                products_detail_name: prod_name,
                products_detail_new_price: prod_price,
                products_detail_old_price: prod_old_price,
                products_detail_picture: prod_picture,
              ))),
            child: GridTile(
              footer: Container(
//               white70 is transparent
                color: Colors.white70,
                child: new Row(
                  children: [
                    Expanded(
                      child: new Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),), 
                    ),
                    new Text("\GH₵ $prod_price", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                  ],
                ),
             ),
              child: Image.asset(prod_picture, fit:BoxFit.cover
            ),
          ),
        ),),
    ),
   );
  }
}
