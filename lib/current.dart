import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app_json_test/condition.dart';

part 'current.g.dart';

@JsonSerializable()
class Current{
  double tempC;
  int isDay;
  Condition condition;

  Current({required this.tempC, required this.isDay, required this.condition});

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);
  }





