import 'package:flutter/material.dart';
import 'package:flutter_with_rest_apis/Dog%20Api/controller/dog_controller.dart';
import 'package:get/get.dart';

class DogHome extends StatefulWidget {
  const DogHome({super.key});

  @override
  State<DogHome> createState() => _DogHomeState();
}

class _DogHomeState extends State<DogHome> {
  DogApiController dogApiController = Get.put(DogApiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dog Home "),
      ),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              dogApiController.breedList();
            },
            child: const Text("Breed List"))
      ]),
    );
  }
}
