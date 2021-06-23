import 'dart:io';


import 'package:device_info/device_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:job_test1/Components/Network/dio_helper.dart';
import 'package:job_test1/Components/Network/end_points.dart';
import 'package:job_test1/Screens/LoginScreen/LoginModel.dart';
import 'package:job_test1/Screens/LoginScreen/cubic/states.dart';
import 'package:platform_device_id/platform_device_id.dart';

class ShopLoginCubit extends Cubit<ShopLoginStates>{

  ShopLoginCubit() : super(ShopLoginInitialState());

  static ShopLoginCubit get(context)=> BlocProvider.of(context);

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  LoginModel loginModel = LoginModel();


  Future<void> userLogin({
  required String email,
    required String password
}) async {
    emit(ShopLoginLoadingState());


    DioHelper.postData(url: LOGIN,
      data: {
        'email': email,
        'password': password,
        'device' : {"id":"122343434","os":"android" },
      },

    ).then((value)  {
      print(value.toString());
      loginModel = LoginModel.fromJson(value.data);
      print(loginModel.data?.accessToken);
      emit(ShopLoginSuccessState(loginModel));



    }).catchError((error) {
      emit(ShopLoginErrorState(error.toString()));

    }
    );


  }
}