import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:evoj/entities/cat_entity.dart';

Future<CatEntity> getRandomCat() async{
  final response = await http
      .get(
    Uri.parse('https://cataas.com/cat?json=true'),
  );

  if(response.statusCode == 200){
    return CatEntity.fromJson(jsonDecode(response.body));
  } else{
    throw Exception('Failed to load cat');
  }
}
