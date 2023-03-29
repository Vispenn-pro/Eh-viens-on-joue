import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:evoj/entities/fact_entity.dart';

Future<FactEntity> getRandomFact() async{
  final response = await http
      .get(
        Uri.parse('https://catfact.ninja/fact?max_length=200'),

      );

  if(response.statusCode == 200){
    return FactEntity.fromJson(jsonDecode(response.body));
  } else{
    throw Exception('Failed to load fact');
  }
}
