import 'package:flutter/material.dart';
import 'package:flutter_with_rest_apis/Dog%20Api/views/breedlist.dart';
import 'package:get/get.dart';

import 'pics_by_breed_list.dart';

class DogHome extends StatefulWidget {
  const DogHome({super.key});

  @override
  State<DogHome> createState() => _DogHomeState();
}

class _DogHomeState extends State<DogHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dog Home "),
      ),
      body: Column(children: [
        const SizedBox(
          height: 50,
        ),
        InkWell(
            onTap: () {
              Get.to(() => const BreedListScreen());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.center,
                height: 70,
                width: 370,
                decoration: BoxDecoration(border: Border.all()),
                child: const Text("Breed List"),
              ),
            )),
        const SizedBox(
          height: 50,
        ),
        InkWell(
            onTap: () {
              Get.to(() => const PicsByBreedScreen());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.center,
                height: 70,
                width: 370,
                decoration: BoxDecoration(border: Border.all()),
                child: const Text("Pics By Breed List"),
              ),
            )),
      ]),
    );
  }
}
