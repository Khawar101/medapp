import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color color;
  final String text;
  double size;
  double height;
  TextOverflow overFlow;
  final fontWeight;
 
   SmallText({key, this.color=Colors.black, required this.text,
  this.size=16,this.height=1.2,this.overFlow=TextOverflow.ellipsis, this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
     overflow: overFlow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        height: height,
        fontSize: size,
        fontWeight:fontWeight,
      ),
    );
  }
}