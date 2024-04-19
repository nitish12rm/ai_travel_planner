import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String BASE_URL = "http://192.168.46.160:4000/api/v1";
const Map<String,dynamic> DEFAULT_HEADERS = {
  'content-type':'application/json'
};

class Api{
  final Dio _dio = Dio();

  Api(){
    _dio.options.baseUrl = BASE_URL;
    _dio.options.headers = DEFAULT_HEADERS;

    _dio.interceptors.add(PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true
    ));
  }


  Dio get sendRequest => _dio;
}

class ApiResponse{

  String status;
  dynamic data;


  ApiResponse({required this.status, this.data});


  factory ApiResponse.fromResponse(Response res){
    final data = res.data;
    return ApiResponse(
        status: data["status"],
        data: data["data"],
    );
  }




}