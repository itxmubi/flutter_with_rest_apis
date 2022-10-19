import 'package:flutter/material.dart';
import 'package:flutter_with_rest_apis/Dog%20Api/controller/dog_controller.dart';
import 'package:get/get.dart';

class PicsByBreedScreen extends StatefulWidget {
  const PicsByBreedScreen({super.key});

  @override
  State<PicsByBreedScreen> createState() => _PicsByBreedScreenState();
}

class _PicsByBreedScreenState extends State<PicsByBreedScreen> {
  DogApiController dogApiController = Get.put(DogApiController());

  @override
  void initState() {
    dogApiController.picsByBreedFunction();
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
              return controller.picsByBreedList.message != null
                  ? Container(
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount:
                              dogApiController.picsByBreedList.message!.length >
                                      50
                                  ? 50
                                  : dogApiController
                                      .picsByBreedList.message!.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 150,
                              width: 150,
                              child: Image.network(dogApiController
                                  .picsByBreedList.message![index]
                                  .toString()),
                            );
                          }),
                    )
                  : const CircularProgressIndicator();
            }),
            // GetBuilder<DogApiController>(builder: (controller) {
            //   return controller.picsByBreedList.message != null
            //       ? Container(
            //           child: ListView.builder(
            //               physics: const NeverScrollableScrollPhysics(),
            //               shrinkWrap: true,
            //               itemCount: dogApiController
            //                           .picsByBreedList.message!.length >
            //                       50
            //                   ? 50
            //                   : dogApiController.picsByBreedList.message!.length,
            //               // 10,
            //               itemBuilder: ((context, index) {
            //                 return Image.network(dogApiController
            //                     .picsByBreedList.message![index]
            //                     .toString());
            //               })),
            //         )
            //       : const CircularProgressIndicator();
            // }),
          ],
        ),
      ),
    );
  }
}
