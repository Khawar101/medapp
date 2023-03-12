import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppUtils {
  cardWidget(
      {width,
      height,
      borderColor,
      borderWidth,
      borderRadius,
      containerColor,
      text,
      hintTextColour,
      shadowColors,
      textColor,
      fontSize,
      fontWeight,
      required hintText}) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
            color: borderColor ?? Colors.transparent,
            width: borderWidth == null ? 2 : borderWidth.toDouble()),
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        color: containerColor ?? Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            color: shadowColors ?? Colors.black.withOpacity(0.2),
            blurRadius: 4,
          )
        ],
      ),
      child: Row(
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              Expanded(
                flex: 6,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: text,
                    hintStyle: TextStyle(color: hintTextColour),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
