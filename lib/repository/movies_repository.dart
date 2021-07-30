import 'dart:convert';

import 'package:mediteran_film_festival/models/movie.dart';

import 'package:http/http.dart' as http;

/// This file will contains all the necessary code for fetch data from the MSSQL server
///
/// We will be using the join endpoint [https://www.mff.ba/api/program?godina=2021&kategorija=1]

class MoviesRepository {
  static String _apiEndpoint =
      'https://www.mff.ba/api/program?godina=2021&kategorija=1';

  static MoviesRepository _instance = MoviesRepository._();

  MoviesRepository._();

  static MoviesRepository get instance => _instance;

  Future<List<Movie>> getMovies() async {
    http.Response _response = await http.get(Uri.parse(_apiEndpoint));
    if (_response.statusCode == 200) {
      final _formattedResponse = json.decode(_response.body);
      return (_formattedResponse as List)
          .map((e) => Movie.fromJson(e))
          .toList();
    } else
      throw Exception(_response.reasonPhrase);
  }
}
