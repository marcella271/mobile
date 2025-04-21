import 'dart:convert';
import 'package:flutter_project4/BKPM/acara35/model/popular_movies.dart';
import 'package:http/http.dart' show Client, Response;

class ApiProvider {
    String apiKey = 'da35abf2b72bbe7be6ffa70063ed0ba9';
    String baseUrl = 'https://api.themoviedb.org/3';

    Client client = Client();

    Future<PopularMovies> getPopularMovies() async {
        Response response =
            await client.get(Uri.parse('$baseUrl/movie/popular?api_key=$apiKey'));
            if (response.statusCode == 200) {
                return PopularMovies.fromJson(jsonDecode(response.body));
            } else {
                throw Exception(response.statusCode);
            }
    }
}