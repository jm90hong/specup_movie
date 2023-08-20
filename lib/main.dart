import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:specup_movie/model/movie_model.dart';
import 'package:specup_movie/screen/movie_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>MovieModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: MovieListScreen(),
      ),
    );
  }
}
