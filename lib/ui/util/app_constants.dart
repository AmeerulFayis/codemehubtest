//sizes
import 'package:flutter/cupertino.dart';

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}


// divider

Widget dividerH() {
  return const SizedBox(height: 20);
}

Widget dividerLH() {
  return const SizedBox(height: 80);
}

Widget dividerLW() {
  return const SizedBox(width: 80);
}
Widget dividerSW() {
  return const SizedBox(width: 15);
}