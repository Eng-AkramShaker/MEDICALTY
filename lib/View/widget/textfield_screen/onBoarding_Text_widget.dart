import 'package:flutter/cupertino.dart';

class OnBoardingTextWidget extends StatelessWidget {
String text;
double fontSize;
FontWeight fontWeight;
Color color;
TextDecoration? textDecoration;

OnBoardingTextWidget(
{required this.text,
required this.fontSize,
required this.fontWeight,
required this.color,
this.textDecoration});


@override
Widget build(BuildContext context) {
return Text(
text,
style: TextStyle(
decoration: textDecoration,
fontSize: fontSize,
fontWeight: fontWeight,
color: color,
fontFamily: 'Montserrat'),
);
}
}