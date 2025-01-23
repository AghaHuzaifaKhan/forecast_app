import 'package:emart_app/Views/category_screen/item_details.dart';
import 'package:emart_app/Widget_common/bg_widget.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Baby Clothing"
                        .text
                        .fontFamily(bold)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .white
                        .rounded
                        .size(105, 60)
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),
            //items container
            20.heightBox,
            Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 250,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5,
                            height: 150,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                          10.heightBox,
                          "Laptop 4GB/64GB"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          10.heightBox,
                          "\$600"
                              .text
                              .color(redColor)
                              .fontFamily(bold)
                              .size(16)
                              .make(),
                        ],
                      )
                          .box
                          .white
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .roundedSM
                          .padding(const EdgeInsets.all(12))
                          .make()
                          .onTap(() {
                        Get.to(() => const ItemDetails(title: "Dummy title"));
                      });
                    }))
          ],
        ),
      ),
    ));
  }
}
