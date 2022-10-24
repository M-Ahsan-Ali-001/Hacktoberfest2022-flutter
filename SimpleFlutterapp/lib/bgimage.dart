import 'package:flutter/material.dart';

class BGimage extends StatelessWidget {
  const BGimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/log.jpg" , fit: BoxFit.cover, color: Colors.black.withOpacity(0.5),
    colorBlendMode: BlendMode.darken,);
  }
}
