import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:specup_movie/model/movie_model.dart';

import '../vo/movie.dart';

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({Key? key}) : super(key: key);

  @override
  State<MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {

  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextFormField(
          controller: dateController,
        ),
        actions: [
          IconButton(
              onPressed: (){
                Provider.of<MovieModel>(context,listen: false).loadMovies(date: dateController.text);
              },
              icon: Icon(Icons.search,color: Colors.deepPurple,)
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Consumer<MovieModel>(builder: (context, movieModel, child){
          return SingleChildScrollView(
            child: Column(
              children: movieModel.movies.map((e) => buildMovieBox(movie: e)).toList(),
            ),
          );
        },),
      ),
    );
  }
}


Widget buildMovieBox({required Movie movie}){
  return Container(

    padding: EdgeInsets.symmetric(horizontal: 16,),
    width: double.infinity,
    height: 80,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(movie.movieName,style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 16,overflow: TextOverflow.ellipsis),),
        const SizedBox(height: 8,),
        Text('${movie.openDate} 개봉',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 14),),
      ],
    ),
  );
}


