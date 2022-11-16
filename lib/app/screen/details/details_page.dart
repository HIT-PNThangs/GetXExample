import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/details/details_controller.dart';
import '../../controller/home/home_controller.dart';
import '../../ui/widgets/slimy_card.dart';
import 'widgets/bottom_card_widget.dart';
import 'widgets/top_card_widget.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: 400,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(32),
            child: GetX<DetailsController>(
              builder: (_) {
                _.post = Get.find<HomeController>().post;
                return ListView(
                  children: const <Widget>[
                    SlimyCard(
                      color: Colors.red,
                      width: 400,
                      topCardHeight: 150,
                      bottomCardHeight: 300,
                      borderRadius: 15,
                      topCardWidget: CardTopCustomWidget(),
                      bottomCardWidget: CardBottomCustomWidget(),
                      slimeEnabled: true,
                    ),
                  ],
                );
              },
            )),
      ),
    );
  }
}
