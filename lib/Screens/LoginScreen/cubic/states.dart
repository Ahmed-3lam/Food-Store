import 'package:job_test1/Screens/LoginScreen/LoginModel.dart';

abstract class ShopLoginStates {}

class ShopLoginInitialState extends ShopLoginStates {}

class ShopLoginLoadingState extends ShopLoginStates {}

class ShopLoginSuccessState extends ShopLoginStates {

  final LoginModel loginModel ;

  ShopLoginSuccessState(this.loginModel);

}

class ShopLoginErrorState extends ShopLoginStates {

  final String error;

  ShopLoginErrorState(this.error);

}