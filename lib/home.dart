import 'package:flutter/material.dart';
import 'package:flutter_with_rest_apis/Sports%20Data%20Api/views/countries.dart';
import 'package:get/get.dart';

import 'Dog Api/views/dog_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Apis "),
        centerTitle: true,
      ),
      body: Column(children: [
        const SizedBox(
          height: 50,
        ),
        InkWell(
            onTap: () {
              Get.to(() => const DogHome());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.center,
                height: 70,
                width: 370,
                decoration: BoxDecoration(border: Border.all()),
                child: const Text("Dog APi"),
              ),
            )),
        InkWell(
            onTap: () {
              Get.to(() => const SportsCountries());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.center,
                height: 70,
                width: 370,
                decoration: BoxDecoration(border: Border.all()),
                child: const Text("Sports Data APi"),
              ),
            )),
      ]),
    );
  }
}
