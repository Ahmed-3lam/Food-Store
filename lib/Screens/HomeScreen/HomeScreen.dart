
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_test1/Screens/CartScreen/CartScreen.dart';
import 'package:job_test1/Screens/ProfileScreen/ProfileScreen.dart';

import 'homeWidgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:Container(
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Colors.grey[100],
          ),
          child:TextFormField(
            decoration: InputDecoration(
              border:InputBorder.none,
                prefixIcon: Icon(Icons.search,color: Colors.black,),
                hintText: "What are you looking for?"
            ),
          ),
        ),

        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: (){
                  Get.to(CartScreen());
                },
                  icon:Icon(Icons.shopping_cart,color: Colors.black,),),],
          )
        ],
      ),
      body:
      Container(
        padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Choose your category",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height:10),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        foodContainer1(image:"1.png",name:"Category name", background: Colors.green,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"2.png",name:"Category name", background: Colors.blue,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"3.png",name:"Category name", background: Colors.pink,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"4.png",name:"Category name", background: Colors.amber,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"5.png",name:"Category name", background: Colors.blue,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"6.png",name:"Category name", background: Colors.blue,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"7.png",name:"Category name", background: Colors.pink,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"1.png",name:"Category name", background: Colors.amber,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"2.png",name:"Category name", background: Colors.blue,opacity: .1),
                      ],
                    )
                ),
                SizedBox(height: 20,),
                imageSlider(),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child:

                    Text("Choose your category",style: TextStyle(fontWeight: FontWeight.bold),),

                    ),
                    TextButton(onPressed: null, child: Text("See more",style: TextStyle(color: Colors.green),))
                  ],

                ),
                SizedBox(height:5),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        foodContainer1(image:"1.png",name:"Category name", background: Colors.green,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"2.png",name:"Category name", background: Colors.blue,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"3.png",name:"Category name", background: Colors.pink,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"4.png",name:"Category name", background: Colors.amber,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"5.png",name:"Category name", background: Colors.blue,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"6.png",name:"Category name", background: Colors.blue,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"7.png",name:"Category name", background: Colors.pink,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"1.png",name:"Category name", background: Colors.amber,opacity: .1),
                        SizedBox(width: 10,),
                        foodContainer1(image:"2.png",name:"Category name", background: Colors.blue,opacity: .1),



                      ],



                    )

                ),
              ],
            ),
          )


        )


      );











  }
}
