import 'package:e_commerce/consts/consts.dart';

Widget featureProductButton({icon}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Image.asset(icon,width: 150,fit: BoxFit.fill,),
      10.heightBox,
      "data".text.fontFamily(semibold).color(darkFontGrey).make(),
      10.heightBox,
      "\$900".text.color(redColor).fontFamily(bold).size(16).make(),
    ],
  ).box.white.roundedSM.padding(EdgeInsets.all(8)).margin(EdgeInsets.symmetric(horizontal: 4)).shadowSm.make();
}