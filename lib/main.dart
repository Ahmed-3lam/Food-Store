import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:job_test1/Screens/LoginScreen/LoginView.dart';
import 'package:job_test1/Screens/MainScreen/MainScreen.dart';
import 'package:job_test1/Screens/OnBoardingScreen/view.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? initScreen;
String? token;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = await preferences.getInt('initScreen');
  token = await preferences.getString('token');
  await preferences.setInt('initScreen', 1);
  print(token);


  runApp(MyApp( ));
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

    //     if(initScreen==0 || initScreen == null){
    // initialRoute:'onboard'
    // }
    //   else if(token !=null){
    // initialRoute: 'shopScreen'
    // }
    //   else{
    // initialRoute: 'home'
    // },

      initialRoute: initScreen==0 || initScreen == null ? 'onboard' : 'home',
      routes: {
        'home': (context) => token !=null  ? MainScreen():LoginScreen(),
    'onboard' : (context) => OnBoardingScreen(),

      },
    );
  }
}
