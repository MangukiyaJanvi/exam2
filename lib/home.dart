import 'package:exam2/second.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List itemslist = [
    "Samsung Galaxy A04e",
    "Redmi A1",
    "OnePlus Nord 2T 5G",
    "OPPO A31",
    "Nothing Phone (1) 5G",
    "Realme narzo 50i",
    "Samsung Galaxy S20 FE 5G",
    "Apple iPhone 14 Pro Max",
    "Apple iPhone 13",
    "Vivo V23 5G"
  ];
  List itemsimages = [
    "assets/images/samsunga04a.jpg",
    "assets/images/redmia1.jpg",
    "assets/images/oneplusnord.jpg",
    "assets/images/oppoa31.jpg",
    "assets/images/nothinga31.jpg",
    "assets/images/realmenarzo50i.jpg",
    "assets/images/samsungs20.jpg",
    "assets/images/iphone14pro.jpg",
    "assets/images/iphone13.jpg",
    "assets/images/vivov23.jpg",
  ];
  List price = [
    '11,998',
    '6,499',
    '28,999',
    '11,990',
    '29,884',
    '6,999',
    '37,990',
    '1,39,900',
    '69,900',
    '27,139'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.menu),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Find",
                                style: TextStyle(
                                    color: Colors.redAccent, fontSize: 20),
                              ),
                              Text(
                                "Your",
                                style:
                                    TextStyle(color: Colors.black, fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Desire",
                                style:
                                    TextStyle(color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "Product.",
                                style:
                                    TextStyle(color: Colors.green, fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.notifications_none_outlined),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search,color: Colors.orange.shade500,),
                          hintText: "Search For Products..",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade900,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      Icons.filter_list,
                      size: 30,
                      color:Colors.white,
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: 450,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: itemslist
                              .asMap()
                              .entries
                              .map((e) =>
                                  Box(itemsimages[e.key], price[e.key], itemslist[e.key]))
                              .toList(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: itemslist
                              .asMap()
                              .entries
                              .map((e) =>
                              Box(itemsimages[e.key], price[e.key], itemslist[e.key]))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.orange.shade900,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.manage_search_outlined,color: Colors.white,),
                      Text("Explore",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.store_mall_directory,color: Colors.white,),
                        Text("Shop",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                        Text("Cart",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.person_outline_outlined,color: Colors.white,),
                        Text("Account",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Box(String image, String price, String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Container(
        height: 224,
        width: 325,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(
                image,
                height: 100,
                width: 100,
              )),
              Text(
                name,
                style: TextStyle(color: Colors.blue, fontSize: 25),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.orangeAccent,
                  ),
                ],
              ),
              Text(
                "Rs. $price",
                style: TextStyle(fontSize: 18),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Second(image, price, name),
                          ));
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
