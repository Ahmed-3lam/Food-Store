import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:job_test1/Components/SharedPreference/UserToken.dart';
import 'package:job_test1/Screens/LoginScreen/cubic/cubic.dart';
import 'package:job_test1/Screens/MainScreen/MainScreen.dart';

import 'cubic/states.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();
    return BlocProvider(
      create: (BuildContext context)=> ShopLoginCubit(),
      child: BlocConsumer<ShopLoginCubit,ShopLoginStates>(
        listener: (context , state ){
          if (state is ShopLoginSuccessState){
            if(state.loginModel.status==200){
              Get.offAll(MainScreen());
              headersMap();


              Fluttertoast.showToast(
                  msg: "Success Login",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 15,
                  backgroundColor: Colors.grey,
                  textColor: Colors.black87,
                  fontSize: 16.0
              );

            }else {

              Fluttertoast.showToast(

                  msg: state.loginModel.message.toString(),
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 15,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            }
          }
        },
        builder:  (context , state ){
          return Scaffold(
              backgroundColor: Colors.white,

              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                actions: [
                  TextButton(onPressed: (){
                    Get.off(MainScreen());
                  },
                      child: Text("Skip",style: TextStyle(color: Colors.green),)
                  )],
              ),

              body: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            image: new DecorationImage(
                                image: new ExactAssetImage('assets/food_logo.png'))),
                      ),
                      Container(
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: _email,
                              decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide: new BorderSide(color: Colors.green)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.green,
                                ),
                                labelText: "Email",
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: _password,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide: new BorderSide(color: Colors.green)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.security,
                                  color: Colors.green,
                                ),
                                labelText: "Password",
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  color: Colors.green),
                              child: state is! ShopLoginLoadingState ?
                              TextButton(
                                  onPressed: () {

                                    ShopLoginCubit.get(context).userLogin(email: _email.text.toString()
                                        , password: _password.text.toString());



                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )):
                                  Center(child: CircularProgressIndicator(),)
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
          );
        },

      ),
    );
  }
}

