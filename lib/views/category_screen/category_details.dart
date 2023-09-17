import 'package:e_commerce/consts/lists.dart';
import 'package:e_commerce/views/category_screen/item_details.dart';
import 'package:e_commerce/widget_common/bg_widget.dart';
import '../../consts/consts.dart';
import 'package:get/get.dart';
class CategoryDetail extends StatelessWidget {
  final String? title;

  const CategoryDetail({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(title: title!.text.fontFamily(bold).white.make()),
        body: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                          (index) => "Baby Clothing"
                          .text
                          .size(12)
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .makeCentered()
                          .box
                          .white
                          .size(150, 60)
                          .roundedSM
                          .shadowSm
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .make()),
                ),
              ),
              20.heightBox,
              //Items comtainer
              Expanded(
                child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        mainAxisExtent: 250),
                    itemBuilder: (Contex, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP7,
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),

                          "Laptop"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          10.heightBox,
                          "\$900"
                              .text
                              .color(redColor)
                              .fontFamily(bold)
                              .size(16)
                              .make(),
                          10.heightBox,
                        ],
                      )
                          .box
                          .white
                          .roundedSM
                          .outerShadowSm
                          .padding(EdgeInsets.all(8))
                          .margin(EdgeInsets.symmetric(horizontal: 8))
                          .shadowSm
                          .make().onTap(() {
                            Get.to(ItemDetail(title: "Bummy item",));
                      });
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
