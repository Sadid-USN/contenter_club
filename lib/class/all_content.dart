import 'package:contenter/style/colors.dart';
import 'package:flutter/material.dart';

class AllContetn {
  String galery;
  String vido;
  String photo;
  Container line;
  String cmaera;

  AllContetn({
    required this.galery,
    required this.cmaera,
    required this.vido,
    required this.photo,
    required this.line,
  });
}

List<AllContetn> allContent = [
  AllContetn(
    cmaera: 'assets/icons/camera.png',
    galery: 'assets/icons/galery.png',
    vido: 'Video',
    photo: 'Photo',
    line: Container(
      height: 2,
      color: gray01,
    ),
  ),
  AllContetn(
    cmaera: 'assets/icons/camera.png',
    galery: 'assets/icons/galery.png',
    vido: 'Video',
    photo: 'Photo',
    line: Container(
      height: 2,
      color: gray01,
    ),
  ),
  AllContetn(
    cmaera: 'assets/icons/camera.png',
    galery: 'assets/icons/galery.png',
    vido: 'Video',
    photo: 'Photo',
    line: Container(
      height: 2,
      color: gray01,
    ),
  ),
];
