import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speed_code/home_pages/my_home_page.dart';


class BigText extends StatelessWidget {
  final Color color;
  final String text;
  double size;
  TextOverflow overFlow;
  final fontWeight;
   BigText({super.key, this.color=const Color(0xFF332d2b), required this.text,
  this.size=20,this.overFlow=TextOverflow.ellipsis,  this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style:  GoogleFonts.ibmPlexSans(
       
        color: color,
        fontWeight:fontWeight,
        fontSize: size,
      ),
    );
  }
}