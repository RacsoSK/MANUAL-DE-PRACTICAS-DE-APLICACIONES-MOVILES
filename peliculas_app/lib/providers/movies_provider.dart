import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas_app/models/models.dart';

class  MoviesProvider extends ChangeNotifier {

  final String _apiKey   = 'fe0ffe6bf139b24ba32f0b7f64705532';
  final String _baseUrl  = 'api.themoviedb.org';
  final String _language = 'es-MX';
  final String _segNowPlaying  = '3/movie/now_playing';
  final String _segPopular = '3/movie/popular';

  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies   = [];

  Map<int, List<Cast>> moviesCast = {};

  int _popularPage = 0;

  MoviesProvider(){


    getOnDisplayMovies();

    getPopularMovies();

  }



  Future <String> _getJsonData(String endPoint, [int page = 1]) async {
    var url = Uri.https(_baseUrl, endPoint,{
      'api_key' : _apiKey,
      'language': _language,
      'page'    : '$page',
    });

    final response = await http.get(url);
    return response.body;
  }


  getOnDisplayMovies() async {
    final jsonData = await _getJsonData(_segNowPlaying);
    final nowPlayingResponse = NowPlayingResponse.fromJson(jsonData);

    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }

  getPopularMovies() async {

    _popularPage++;

    final jsonData = await _getJsonData(_segPopular, _popularPage);
    final popularResponse = PopularResponse.fromJson(jsonData);

    popularMovies = [...popularMovies, ...popularResponse.results];

    notifyListeners();
  }

  Future<List<Cast>> getMovieCast(int movieId)async{


    print('Pidiendo info al Servidor - CAST');

    final jsonData = await _getJsonData('3/movie/$movieId/credits');
    final creditsResponse = CreditsResponse.fromJson(jsonData);

    moviesCast[movieId] = creditsResponse.cast;

    return creditsResponse.cast;

  }

}