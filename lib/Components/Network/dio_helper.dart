import 'package:dio/dio.dart';


class DioHelper {

 static Dio dio =Dio(
     BaseOptions(
       baseUrl: "https://student.valuxapps.com/api/",
       receiveDataWhenStatusError: true,
       headers: {
         "Content-Type": "application/json",
       }
     ));

 static init(){
   dio = Dio(
     BaseOptions(
       baseUrl: "http://rowadtqnee.online/calc/public/api/v1",
       receiveDataWhenStatusError: true,

     )
   );
 }

 static Future<Response> getData({
  required String url,
   required Map<String,dynamic> query,
})
 async
 {
   return await dio.get(url,queryParameters: query,);
 }

 static Future<Response> postData({
  required String url,

   required Map<String,dynamic> data,
}) async
 {
   return dio.post(
     url,

     data: data,
   );
 }
}