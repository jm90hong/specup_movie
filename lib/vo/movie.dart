class Movie {
  String movieName;
  String openDate;

  Movie({
    this.movieName='',
    this.openDate=''
  });


  factory Movie.fromJson(Map<String, dynamic> map){
    return Movie(
      movieName: map['movieNm'],
      openDate: map['openDt']
    );
  }
}