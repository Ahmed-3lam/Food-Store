import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget cartItem (
{
  required String image,
  String foodTitle = "Healthy Food Meal (200 C )",
  String foodSubTitle ="Well Done",
  String foodPrice = "250 EGP",
  String foodCount = "4",
}
    ) {
  return
Container(
  padding: EdgeInsets.all(5),
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.green[50]),
  child: Row(

    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.green[50]

        )
        ,child: Image.asset("assets/$image",height: 100,width: 100,),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$foodTitle",style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 5,),
          Text("$foodSubTitle",style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 5,),
          Text("$foodPrice",style: TextStyle(color: Colors.green)),
        ],
      ),
      Column(
        children: [
          Container(
            width: 30,
            height: 30,
            child:FloatingActionButton(onPressed: null,child:Icon(Icons.add),backgroundColor: Colors.green,) ,
          ),
          SizedBox(height: 5),
          Text("$foodCount"),
          SizedBox(height: 5),
          Container(
            width: 30,
            height: 30,
            child:FloatingActionButton(onPressed: null,child:Text("-",style: TextStyle(fontSize: 20),)
              ,backgroundColor: Colors.green,) ,
          ),


        ],
      )

    ],
  ) ,

);}

Widget totalPriceItem ({
  String totalPrice = "3000"

})
{

  return
  Container(
  margin: EdgeInsets.only(top: 10,bottom: 5,right: 20,left: 20),
child: Row(
children: [
Expanded(child:
Text("Total: ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold), )
),
Text("$totalPrice",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
],
),
);
}

Widget checkoutButton (){
  return
    Container(

      margin: EdgeInsets.only(top: 10,bottom: 5,right: 20,left: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(8)),
      child:
      TextButton(onPressed: null,
          child: Text("Checkout",style: TextStyle(color: Colors.white),)) ,
    );
}










