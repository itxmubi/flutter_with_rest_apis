import 'dart:convert';
import 'dart:developer';

import 'package:flutter_with_rest_apis/Sports%20Data%20Api/countries_model.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class SportsDataController extends GetxController {
  String apiKey = "6ea73f60-a942-11ed-9751-cd9e2964cdce";

  CountriesModel countriesModel = CountriesModel();
  getCountrieslist() async {
    String countriesURL =
        "https://app.sportdataapi.com/api/v1/soccer/countries?apikey=$apiKey&continent=Europe";

    // picsByBreedList = PicsByBreedList();
    final response = await http.get(
      Uri.parse(countriesURL),
    );

    countriesModel = CountriesModel.fromJson(jsonDecode(response.body));
    update();
    log(countriesModel.data.toString());

    // log(picsByBreedList.message.toString());
    // update();
  }
}
