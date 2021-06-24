import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:job_test1/Screens/LoginScreen/LoginView.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack( // <-- STACK AS THE SCAFFOLD PARENT
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
              image: AssetImage("assets/Food-Android-Wallpaper.jpg",), // <-- BACKGROUND IMAGE
              fit: BoxFit.cover,

            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,

            actions: [
              IconButton(
                onPressed: null,  icon: Icon(Icons.settings,color: Colors.green,),
              ),
            ],
          ),

          body: Stack(
              children:[ Container(
                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.only(top:50,left: 2,right: 2),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(40) ,topRight: Radius.circular(40)),
                ),


              ),

                Positioned(

                  left: 130,
                  child: Container(
                    height: 100,
                    width: 100,

                    decoration: BoxDecoration(
                        image: DecorationImage(

                          image: AssetImage("assets/me.jpg"),

                          // <-- BACKGROUND IMAGE

                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                  ),
                ),


                Container(
                  child:
                  Container(
                    padding: EdgeInsets.all(10),
                    margin:EdgeInsets.only(top: 200,left: 20,right: 20),
                    child:
                    ListView(
                      children: [
                        Text("Name",style:new TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height:10),
                        Container(
                            padding: EdgeInsets.all(15),
                            height: 50,

                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(7)),
                            ),
                            child: Text("Ahmed Allam")


                        ),
                        SizedBox(height:10),
                        Text("E-mail",style:new TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height:10),
                        Container(
                            padding: EdgeInsets.all(15),
                            height: 50,

                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(7)),
                            ),
                            child: Text("3lam.ahmed@gmail.com")


                        ),
                        SizedBox(height:10),
                        Text("City",style:new TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height:10),
                        Container(
                            padding: EdgeInsets.all(15),
                            height: 50,

                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(7)),
                            ),
                            child: Text("Al Monofia")


                        ),
                        TextButton(onPressed: () async{
                          SharedPreferences cashHelper = await SharedPreferences.getInstance();
                          if(cashHelper.getString("token") !=null){
                            CircularProgressIndicator();
                            cashHelper.remove("token").then((value) {
                              Get.offAll(LoginScreen());

                            }) ;
                        }

                          }, child: Text("SignOut")),

                      ],
                    ),
                  ),

                )

              ]
          ),
        ),

      ],
    );

  }
}


