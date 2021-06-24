
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_test1/Screens/HomeScreen/HomeModel.dart';
import 'package:job_test1/Screens/HomeScreen/new_model.dart';


Widget foodContainer1({
  required Color background,
  required String image,
  required String name,
  required double opacity,


}) {
 return
    Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: background.withOpacity(opacity)

          )
          ,child: Image.asset("assets/$image",height: 100,width: 100,),
        ),
        Text("$name",style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );}



//image Slider
    Widget imageSlider ({
  // HomeModel? newModel,
      String image1="cover.jpg",
      String image2="Food-Android-Wallpaper.jpg",
      String image3="food2.jpg",
})
{
  return
  Container(
  width: double.infinity,
  height: 200,
  child:
  ClipRRect(
  borderRadius: BorderRadius.circular(10),
  child: CarouselSlider(
  // items:  newModel?.data?.banners?.map((e) => Image(
  //   image: NetworkImage('${e.image}'),
  //   width: double.infinity,
  //   fit: BoxFit.cover,
  //
  // ),).toList()
items: [


  Image(
  image: AssetImage("assets/$image1"),
    width: double.infinity,
    fit: BoxFit.cover
    ,
  ),
    Image(
      image: AssetImage("assets/$image2"),
      width: double.infinity,
      fit: BoxFit.cover
      ,
    ),
    Image(
      image: AssetImage("assets/$image3"),
      width: double.infinity,
      fit: BoxFit.cover
    )
]


,
options: CarouselOptions(
viewportFraction: 1,
height: 250,
initialPage: 0,
enableInfiniteScroll: true,
reverse: false,
autoPlay: true,
autoPlayInterval: Duration(seconds: 3),
autoPlayAnimationDuration: Duration(seconds: 1),
autoPlayCurve: Curves.fastLinearToSlowEaseIn,
scrollDirection: Axis.horizontal,



),
),
),);
}

