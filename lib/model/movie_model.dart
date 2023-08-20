import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MovieModel extends ChangeNotifier{

  void loadMovies() async{
    Uri url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    var response = await http.get(url);
    print(response.body);
  }



}