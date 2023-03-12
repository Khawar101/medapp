import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagingScreen extends StatefulWidget {
  const MessagingScreen({Key? key}) : super(key: key);

  @override
  State<MessagingScreen> createState() => _MessagingScreenState();
}

class _MessagingScreenState extends State<MessagingScreen> {
  @override
  Widget build(BuildContext context) {
    double barHeight = 80.0;
    final double statusbarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: statusbarHeight),
            height: statusbarHeight + barHeight,
            //  width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.arrowLeft),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(width: 6),
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black,
                        backgroundImage:
                            AssetImage('assets/images/profile_pic.png'),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Shadab Khan",
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 3),
                          const Text(
                            "online",
                            style: TextStyle(color: Color(0xffa2b5b7)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.video_call_outlined,
                        color: Color(0xffdddce0),
                        size: 35,
                      ),
                      SizedBox(width: 16),
                      Icon(
                        Icons.phone_outlined,
                        color: Color(0xffdddce0),
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //   const SizedBox(height: 15),

          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: MediaQuery.removePadding(
                 context: context,
                removeTop: true,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, position) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  //  height: 120,
                                  width: MediaQuery.of(context).size.width * 0.6,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(10.0)),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText:
                                                "Task Description goes here...",
                                            hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text("09:32 PM"),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 18),
                          Align(
                            alignment: Alignment.topRight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                Container(
                                  //  height: 120,
                                  width: MediaQuery.of(context).size.width * 0.6,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF1859dc),
                                      borderRadius: BorderRadius.circular(10.0)),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText:
                                                "Task Description goes ...",
                                            hintStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text("10:50 PM"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
//
          Container(
            height: 100,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              color: Color(0xffffffff),
            ),
            child: Center(
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width * 0.88,
                decoration: BoxDecoration(
                    color: const Color(0xfffafafa),
                    borderRadius: BorderRadius.circular(235)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Type here...",
                            hintStyle: TextStyle(
                                color: Color(0xffb3b3b3),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const VerticalDivider(
                        width: 20,
                        thickness: 2,
                        indent: 20,
                        endIndent: 20,
                        color: Color.fromARGB(20, 0, 0, 0),
                      ),
                      const SizedBox(width: 13),
                      const Icon(
                        Icons.circle_outlined,
                        color: Color(0xffa5a5a5),
                      ),
                      const SizedBox(width: 13),
                      Image.asset(
                        "assets/icons/camera-icon-8.png",
                        width: 22,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),





        ],
      ),
    );
  }
}
