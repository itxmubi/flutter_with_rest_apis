import 'dart:convert';
import 'dart:developer';

import 'package:flutter_with_rest_apis/Dog%20Api/Models/breed_model.dart';
import 'package:flutter_with_rest_apis/Dog%20Api/Models/pics_by_breed_model.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class DogApiController extends GetxController {
  String breedlistUrl = "https://dog.ceo/api/breeds/list/all";
  BreedsList breedsListModel = BreedsList();
  PicsByBreedList picsByBreedList = PicsByBreedList();

  String breedType = "";

  breedList() async {
    final response = await http.get(
      Uri.parse(breedlistUrl),
    );

    breedsListModel = BreedsList.fromJson(jsonDecode(response.body));
    update();

    log(breedsListModel.message.toString());
  }

  picsByBreedFunction() async {
    String picsbybreed = "https://dog.ceo/api/breed/$breedType/images";
    picsByBreedList = PicsByBreedList();
    final response = await http.get(
      Uri.parse(picsbybreed),
    );

    picsByBreedList = PicsByBreedList.fromJson(jsonDecode(response.body));
    update();

    log(picsByBreedList.message.toString());
    update();
  }
}
