import 'package:flutter_apps/constraints.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_apps/weathermodel.dart';
import 'dart:convert'; // For jsonDecode


class WeatherApi {
  final String baseUrl = "http://api.weatherapi.com/v1/current.json";

  Future<ApiResponse>getCurrentWeather(String location) async{
    String apiUrl ="$baseUrl?key=$apiKey&q=$location";
    try{
      final response = await  http.get(Uri.parse(apiUrl));
      if(response.statusCode == 200){
        //print(response.body);
        return ApiResponse.fromJson(jsonDecode(response.body));
      }else{
        throw Exception("failed to load weather");
      }
    }catch(e){
      throw Exception("failed to load weather");
    }
  }


}