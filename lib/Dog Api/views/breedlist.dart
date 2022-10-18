import 'package:flutter/material.dart';
import 'package:flutter_with_rest_apis/Dog%20Api/controller/dog_controller.dart';
import 'package:get/get.dart';

class BreedListScreen extends StatefulWidget {
  const BreedListScreen({super.key});

  @override
  State<BreedListScreen> createState() => _BreedListScreenState();
}

class _BreedListScreenState extends State<BreedListScreen> {
  DogApiController dogApiController = Get.put(DogApiController());

  @override
  void initState() {
    dogApiController.breedList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Breed List Screen"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Text("dfasdf"),
          GetBuilder<DogApiController>(builder: (controller) {
            return Container(
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:
                      dogApiController.breedsListModel.message!.length ?? 0,
                  itemBuilder: ((context, index) {
                    return dogApiController.breedsListModel.message!.isNotEmpty
                        ? ListTile(
                            title: Text(dogApiController
                                .breedsListModel.message!.entries.first
                                .toString()),
                          )
                        : ListTile(
                            title: Text("Breed".toString()),
                          );
                  })),
            );
          }),
        ],
      )
          // Column(children: [
          //   for (int i = 0;
          //       i < dogApiController.breedsListModel.message!.length;
          //       i++)
          //     ListTile(
          //       title: Text(dogApiController.breedsListModel.message![i]!.first
          //           .toString()),
          //     )
          // ]),
          ),
    );
  }
}
