
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:job_test1/Components/Network/dio_helper.dart';
import 'package:job_test1/Components/Network/end_points.dart';
import 'package:job_test1/Screens/LoginScreen/LoginModel.dart';
import 'package:job_test1/Screens/LoginScreen/cubic/states.dart';


class ShopLoginCubit extends Cubit<ShopLoginStates>{

  ShopLoginCubit() : super(ShopLoginInitialState());

  static ShopLoginCubit get(context)=> BlocProvider.of(context);



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

    ).then((value)   {
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