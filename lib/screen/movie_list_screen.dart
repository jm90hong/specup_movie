import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:specup_movie/model/movie_model.dart';

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({Key? key}) : super(key: key);

  @override
  State<MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Consumer<MovieModel>(builder: (context, movieModel, child){
          return Column(
            children: movieModel.movies.map((e) => Text(e.movieName)).toList(),
          );
        },),
      ),
    );
  }
}
