import 'dart:convert' as convert;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Probability.dart';

class NetworkBrain {
  String _age;
  String _gender;
  
  Future<String> downloadAge(String name, String country) async{
    String url = "https://api.agify.io?name=$name&country_id=$country";
    var response = await http.get(url);
    if(response.statusCode == 200){
      var jsonResponse = convert.jsonDecode(response.body);
      print(jsonResponse);
      var item = jsonResponse["age"];
      _age = item.toString();
      return _age;
    } else{
      print("Request failed with status: ${response.statusCode}.");
      return("Error: ${response.statusCode}");
    }
  }

  Future<List<Probability>>downloadNationality(String name, String country) async{
    List<Probability> list;
    String url = "https://api.nationalize.io?name=$name";
    var response = await http.get(url);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      var rest = data["country"] as List;
      list = rest.map<Probability>((json) => Probability.fromJson(json)).toList();
      print("List Size: ${list.length} ");
      return list;

    } else{
      print("Request failed with status: ${response.statusCode}.");
    }

  }






}




