import 'package:flutter/material.dart';
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
      appBar: AppBar(title: const Text("Apis ")),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              Get.to(() => const DogHome());
            },
            child: const Text("Dog Api"))
      ]),
    );
  }
}
