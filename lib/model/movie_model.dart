import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MovieModel extends ChangeNotifier{

  void loadMovies() async{
    Uri url = Uri.parse('http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20120101');
    var requestUrlWithParam = url.replace(queryParameters:{
      'b1_like_idx':''.toString(),
      'board_idx':''.toString(),
    });
    var response = await http.get(requestUrlWithParam);
    print(response.body);
  }



}