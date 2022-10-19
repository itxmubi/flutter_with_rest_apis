import 'package:flutter/material.dart';
import 'package:flutter_with_rest_apis/Dog%20Api/controller/dog_controller.dart';
import 'package:flutter_with_rest_apis/Dog%20Api/views/pics_by_breed_list.dart';
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
            return controller.breedsListModel.message!.entries != null
                ? Container(
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount:
                            dogApiController.breedsListModel.message!.length,
                        itemBuilder: ((context, index) {
                          return dogApiController
                                  .breedsListModel.message!.isNotEmpty
                              ? ListTile(
                                  onTap: () {
                                    dogApiController.breedType =
                                        dogApiController
                                            .breedsListModel.message!.entries
                                            .elementAt(index)
                                            .key
                                            .toString();
                                    dogApiController.update();
                                    Get.to(() => const PicsByBreedScreen());
                                  },
                                  title: Text(dogApiController
                                      .breedsListModel.message!.entries
                                      .elementAt(index)
                                      .key
                                      .toString()),
                                )
                              : ListTile(
                                  title: Text("Breed".toString()),
                                );
                        })),
                  )
                : const CircularProgressIndicator();
          }),
        ],
      )),
    );
  }
}
