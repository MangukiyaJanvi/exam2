import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  String? a1;
  String? a2;
  String? a3;

  Second(String itemsimages, String price, String itemslist) {
    a1 = itemslist;
    a2 = itemsimages;
    a3 = price;
  }

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  String a = "Add To Cart";
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
              onTap: (){
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
          title: Text(
            "${widget.a1}",
            style: TextStyle(
                color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart_outlined,color: Colors.black,),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Container(
              height: 800,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: Image.asset("${widget.a2}")),
                  SizedBox(
                    height: 5,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 500,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.orange.shade50,
                          boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 5),
                          ],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${widget.a1}",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.favorite_border,
                                      size: 30,
                                      color: Colors.deepOrange,
                                    ),
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            if (i > 1) {
                                              i--;
                                            }
                                          });
                                        },
                                        child: Icon(
                                          Icons.remove,
                                          size: 30,
                                          color: Colors.black54,
                                        ),
                                        backgroundColor: Colors.transparent,
                                        elevation: 0,
                                      ),
                                      Container(
                                          height: 20,
                                          width: 20,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black12)
                                          ),
                                          child: Text("$i")),
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            i++;
                                          });
                                        },
                                        child: Icon(
                                          Icons.add,
                                          size: 30,
                                          color: Colors.orangeAccent,
                                        ),
                                        backgroundColor: Colors.transparent,
                                        elevation: 0,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "\$ ${widget.a3}",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Product Details",
                                        style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                                      ),
                                      Icon(Icons.arrow_downward,color: Colors.orange.shade900,),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "Internet connectivity.",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  Text(
                                    "A mobile browser.",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  Text(
                                    "Support for third-party applications.",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  Text(
                                    "The ability to run multiple applications simultaneously.",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  Text(
                                    "A digital camera, typically with video capability.",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.message,color: Colors.black,),
                                      SizedBox(width: 10,),
                                      Text("24 Product Question & Answer",style: TextStyle(color: Colors.black,fontSize: 15),),
                                    ],
                                  ),
                                  Icon(Icons.navigate_next,color: Colors.black,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Review",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  Row(
                                    children: [
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
                                      SizedBox(width: 10,),
                                      Icon(Icons.navigate_next,color: Colors.black,),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Buy Now",
                                        style: TextStyle(color: Colors.white,fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.orange.shade900,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Add To Cart",
                                        style: TextStyle(color: Colors.white,fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
