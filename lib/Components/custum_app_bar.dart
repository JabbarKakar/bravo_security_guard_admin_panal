import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final CircleAvatar? circleAvatar;
  final Icon? icon1;
  final Icon? icon2;
  final Text title;

  const CustomAppBar(
      {Key? key,
      this.circleAvatar,
      this.icon1,
      this.icon2,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
}
