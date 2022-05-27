
import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
   final double imageRadius;
  final ImageProvider? imageProvider;
  const CircleImage({Key? key,this.imageProvider,this.imageRadius = 20}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      child:const CircleAvatar(
        radius: 15,
        backgroundImage: AssetImage('assets/author_katz.JPG')
      ) ,
    );
  }
}