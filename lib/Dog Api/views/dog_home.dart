import 'package:flutter/material.dart';
import 'package:flutter_with_rest_apis/Dog%20Api/controller/dog_controller.dart';
import 'package:flutter_with_rest_apis/Dog%20Api/views/breedlist.dart';
import 'package:get/get.dart';

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
        ElevatedButton(
            onPressed: () {
              Get.to(() => const BreedListScreen());
            },
            child: const Text("Breed List"))
      ]),
    );
  }
}
