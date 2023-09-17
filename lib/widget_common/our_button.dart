import 'package:e_commerce/consts/consts.dart';

Widget ourButton({onpress, color, textcolor, String? title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onpress,
    child: title!.text.color(textcolor).fontFamily(bold).make(),
  );
}
