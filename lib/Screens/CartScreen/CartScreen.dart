import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_test1/Screens/CartScreen/cartWidgets.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar:AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text("My Cart",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body:  Column(

              children: [
                Expanded(
                  child:Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(20),
                    child:
                    Column(

                      children: [
                        cartItem(image: "2.png"),
                        SizedBox(height: 20,),
                        cartItem(image: "3.png"),
                        SizedBox(height: 20,),
                        cartItem(image: "3.png"),
                      ],
                    ),
                  ) ,
                ),
                totalPriceItem(totalPrice: "3,000"),
                checkoutButton(),
              ],
            ) ,
    );


  }
}
