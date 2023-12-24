import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnePageView extends StatelessWidget {
  const OnePageView({super.key});
  @override
  Widget build(BuildContext context) {
    double iconSize = 70;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.launch_rounded),
        onPressed: () {},
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Center(
            child: Container(
              alignment: Alignment.center,
              width: Get.width * 0.95,
              height: Get.height * 0.76,
              decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            ),
          )
        ],
      ),
    );
  }
}
