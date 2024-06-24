import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app_json_test/Weather.dart';


void main(List<String> args) async{
  String jsonString = await getJsonString();
  final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;
    final weather = Weather.fromJson(jsonMap);
    print('location: \n name: ${weather.location.name}\n country: ${weather.location.country}\n localtime: ${weather.location.localtime}\n is day: ${weather.current.isDay == 0? 'no': 'yes'}');
}



Future<String> getJsonString() async{
  final response = await http.get(Uri.parse('http://api.weatherapi.com/v1/current.json?key=e039e98b950a430e93d92037240506&q=Ha%20Nam&aqi=no'));
  

  return response.body;
}