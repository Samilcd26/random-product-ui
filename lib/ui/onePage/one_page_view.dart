import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rnd_product/core/models/product_model.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:rnd_product/ui/onePage/test.dart';

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
      body: Stack(
        children: [
          Column(
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        Test.data[index].pictureUrl,
                        fit: BoxFit.contain,
                      );
                    },
                    itemCount: Test.data.length,
                    itemWidth: Get.width,
                    itemHeight: Get.height * 0.76,
                    layout: SwiperLayout.TINDER,
                  ),
                ),
              )
            ],
          ),
          //StrokeText(test: Test.data)
        ],
      ),
    );
  }
}

class StrokeText extends StatelessWidget {
  const StrokeText({
    super.key,
    required this.test,
  });

  final ProductModel test;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: Get.width * 0.3,
      left: 7,
      child: SizedBox(
        width: Get.width * 0.95,
        child: Stack(
          children: <Widget>[
            Text(
              test.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 3
                  ..color = CupertinoColors.white, // <-- Border color
              ),
            ),
            Text(
              test.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: CupertinoColors.black, // <-- Inner color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
