import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../vo/movie.dart';

class MovieModel extends ChangeNotifier{

  List<Movie> movies = [];


  void loadMovies({required String date}) async{
    movies=[];
    Uri url = Uri.parse('http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json');
    var requestUrlWithParam = url.replace(queryParameters:{
      'key':'f5eef3421c602c6cb7ea224104795888'.toString(),
      'targetDt':date.toString(),
    });
    var response = await http.get(requestUrlWithParam);
    var jsonList = jsonDecode(response.body);
    for(int i=0;i<jsonList.length;i++){
      Movie mv = Movie.fromJson(jsonList[i]);
      movies.add(mv);
    }
    notifyListeners();
  }



}