//import 'dart:html';

import 'dart:io';

import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.grey[100],
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("Picking & Deliver", style: TextStyle(
                                color: Colors.grey, fontSize: 15),),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,
                                  color: Colors.grey,),
                                Text("Las Vegas,US", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child:
                          Center(child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image(image: AssetImage("assets/images/man.png"),
                                width: 25,
                                height: 25,),
                            ],
                          ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      child: Expanded(
                        child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child:TextField(
                          cursorColor: Colors.red,
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.search,color: Colors.grey[500],size: 25,),
                                            hintText: "Search a service or laundry",
                                                              hintStyle: TextStyle(fontSize: 16.0,color: Colors.grey[500]),
                                                              border: InputBorder.none,
                        ),
                      ),),
                    ),
                    ),
                    SizedBox(width: 20,),
                    Row(
                      children: [
                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.blue[300],
                                            shape: BoxShape.rectangle,
                                            borderRadius: BorderRadius.circular(5.0),
                                            boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
                                              // spreadRadius: 2,
                                              // blurRadius: 5,
                                              // offset: Offset(0, 3)
                                            ),
                                            ] ,
                                          ),
                                          child: Icon(Icons.vertical_align_center_outlined,color: Colors.white),
                                        ),
                      ],
                    )
                  ],
                ),
            SizedBox(height: 20,),
            Container(
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5.0),
                          image: new DecorationImage(
                            image: ExactAssetImage('assets/images/washadd1.jfif'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                SizedBox(height: 20,),
                row(name: "Searching",name1: "See All",),
                SizedBox(height: 20,),
                  Row(
                    children: [
                      scroll(color: Colors.red,name: "Wash",),
                      scroll(color: Colors.blue,name: "Iron",),
                      scroll(color: Colors.green,name: "Dry Clean"),
                      // scroll(color: Colors.yellow,name: "Leather"),
                      // scroll(color: Colors.pink,name: "T-Shirt"),
                      SizedBox(height: 20,),
                    ],
                  ),
                SizedBox(height: 20,),
                row(name: "Popular Near by You",name1: "See All",),
                SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Klean Laudry",style: TextStyle(fontSize:14,color: Colors.black,fontWeight: FontWeight.bold),),
                                  Text("8.99",style: TextStyle(fontSize:14,color: Colors.red,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("Starting at",style: TextStyle(fontSize:12,color: Colors.grey,),),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("MT Road. 1582",style: TextStyle(fontSize:14,color: Colors.grey,),),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,),
                                      Text("5.0",style: TextStyle(fontSize:14,color: Colors.black,fontWeight: FontWeight.bold)),
                                      Text("(4.7K Ratings)",style: TextStyle(fontSize:14,color: Colors.grey,),),
                                    ],
                                  ),
                                  FlatButton(onPressed: (){},
                                      color: Colors.lightBlue,
                                      child: Text("Details",style: TextStyle(fontSize:14,color: Colors.white,),))
                                ],
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
            ],

                ),
              ),
    ),
      ),
            );
  }
}

class scroll extends StatelessWidget {
  const scroll({
    this.color,this.name,
    Key key,
  }) : super(key: key);
final Color color;
  final String name;
  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  //Image(image: AssetImage("assets/images/wash.jpg",),),
                  Text(name),
                ],
              ),
            ),
          ),
          SizedBox(width: 10,),
        ],
    );
  }
}

class row extends StatelessWidget {
  const row({
    this.name,this.name1,
    Key key,
  }) : super(key: key);
final String name;
final String name1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          ],
        ),
        Row(
          children: [
            Text(name1,style: TextStyle(color: Colors.grey),),
          ],
        ),
      ],
    );
  }
}







