import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/countries_controller.dart';

class SportsCountries extends StatefulWidget {
  const SportsCountries({super.key});

  @override
  State<SportsCountries> createState() => _SportsCountriesState();
}

class _SportsCountriesState extends State<SportsCountries> {
  SportsDataController sportsDataController = Get.put(SportsDataController());

  @override
  void initState() {
    sportsDataController.getCountrieslist(); // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Countries")),
      body: GetBuilder<SportsDataController>(builder: (cont) {
        return Column(children: const [
          Text("ssfdsfs"),
          // ListView.builder(
          //     itemCount: sportsDataController.countriesModel.data!.length,
          //     itemBuilder: (context, index) {
          //       return const Text("dsfdfsf");
          //     })
        ]);
      }),
    );
  }
}
