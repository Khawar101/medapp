import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speed_code/home_pages/main_screen.dart';
import 'package:speed_code/widgets/big_text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/images/welcome_image.png"),
                ),
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BigText(
                      text: "Get Your Tasks Done \nWith Just A Few Taps",
                      size: 27,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Find the right person for job \n       fast and hassle free",
                        style: GoogleFonts.ibmPlexSans(
                            color: Colors.black54,
                            fontSize: 16,
                            letterSpacing: 0.5)),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 40, 20, 15),
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFC846),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Center(
                          child: BigText(
                        text: "Get Started",
                        size: 15,
                        fontWeight: FontWeight.w500,
                      )),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainScreen()));
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: const Color(0xFF1859dc).withOpacity(0.6)),
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Center(
                            child: BigText(
                          text: "I already have an account",
                          color: const Color(0xFF1859dc),
                          size: 15,
                          fontWeight: FontWeight.w500,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
