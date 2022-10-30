import 'package:contenter/style/colors.dart';
import 'package:flutter/material.dart';

class AllContetn {
  String all;
  int number;
  List<MyIcon> icons;
  Divider line;
  AllContetn(
      {required this.all,
      required this.icons,
      required this.line,
      required this.number});
}

List<AllContetn> allContent = [
  AllContetn(
      all: 'All', icons: icons, line: const Divider(color: gray02), number: 6),
];

class MyIcon {
  Image icon;
  MyIcon({required this.icon});
}

List<MyIcon> icons = [
  MyIcon(
    icon: Image.asset('assets/icons/camera.png'),
  ),
  MyIcon(
    icon: Image.asset('assets/icons/galery.png'),
  ),
];
