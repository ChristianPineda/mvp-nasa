import 'package:dio/dio.dart';

import 'models.dart';

class Service {
  Dio dio = Dio();

  String apiKey = "E6yiDISK1oTkdRvQNNYhB4lEmqXek1VVCJhSqrck";

  Future<List<Asteroid>> getAsteroids(
      DateTime startDate, DateTime endDate) async {
    String startDateFormat = formatDate(startDate);
    String endDateFormat = formatDate(endDate);

    Response response = await dio.get(
        "https://api.nasa.gov/neo/rest/v1/feed?start_date=$startDateFormat&end_date=$endDateFormat&api_key=$apiKey");

    List<Asteroid> asteroids = [];

    Objeto data = Objeto.fromJson(response.data);

    data.nearEarthObjects.forEach((key, value) {
      asteroids.addAll(value);
    });
    return asteroids;
  }

  String formatDate(DateTime time) {
    String month = time.month > 10 ? time.month.toString() : "0${time.month}";
    String day = time.day > 10 ? time.day.toString() : "0${time.day}";
    return "${time.year}-$month-$day";
  }
}
