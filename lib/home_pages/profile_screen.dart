import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speed_code/chating_page.dart';
import 'package:speed_code/widgets/big_text_widget.dart';
import 'package:speed_code/widgets/small_text_widget.dart';
import 'package:readmore/readmore.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 180,
                width: double.maxFinite,
                color: const Color(0xFF1859dc),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(78, 64, 195, 255),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 23,
                          ),
                        ),
                      ),
                      BigText(
                        text: "Tasker Profile",
                        color: Colors.white,
                        size: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(78, 64, 195, 255),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Icon(
                          Icons.bookmark_outline_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 100),
                    BigText(
                      text: "Phillip Rhiel Madsen",
                      color: Colors.black,
                      size: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigText(
                          text: "INDIVIDUAL",
                          size: 12,
                          color: const Color(0xFF1859dc),
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(width: 11),
                        const Icon(
                          Icons.more,
                          color: Color.fromARGB(55, 0, 0, 0),
                          size: 5,
                        ),
                        const SizedBox(width: 11),
                        BigText(
                          text: "ASSEMBLY",
                          size: 14,
                          color: const Color(0xFF1859dc),
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    IntrinsicHeight(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: const [
                                    FaIcon(FontAwesomeIcons.solidStar,
                                        color: Color(0xFFFFC846), size: 20),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "4.9",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Text(
                                  "rating",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black54),
                                ),
                              ],
                            ),
                            const VerticalDivider(
                              width: 40,
                              thickness: 2,
                              indent: 25,
                              endIndent: 25,
                              color: Color.fromARGB(20, 0, 0, 0),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.task,
                                      size: 25,
                                      color: Color(0xFF1859dc),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "1098",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                const Text(
                                  "tasks done",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black54),
                                ),
                              ],
                            ),
                            const VerticalDivider(
                              width: 20,
                              thickness: 2,
                              indent: 25,
                              endIndent: 25,
                              color: Color.fromARGB(20, 0, 0, 0),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 20, 3, 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.timer,
                                        size: 22,
                                        color: Color(0xFF1859dc),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "1hour",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 9,
                                  ),
                                  const Text(
                                    "avg.job done",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 4,
                      //      indent: 20,
                      //      endIndent: 20,
                      color: Color.fromARGB(20, 0, 0, 0),
                    ),
                    const SizedBox(height: 5),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 13, horizontal: 17),
                          child: Column(
                            //  size: 20,fontWeight: FontWeight.w500,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "About Tasker",
                                style: GoogleFonts.ibmPlexSans(
                                  fontSize: 20,
                                  //color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const ReadMoreText(
                                "Saleem was born on Sunday; 14th January, 1996 in Lahore, Punjab, Islamic Republic of Pakistan. Her Age (As on 01/10/2022) is 26 Years 08 months and 18 Days (ie. 320 months 18 Days or; 1303 Weeks 06 Days or 9757 Days or 234168 Hours or 14050080 minutes or 843004800 seconds. She has a Pakistani NationalityDur-e-Fishan Saleem is a Pakistani Actress,  a Beautiful Model. She is predominantly known for her work in the Pakistani Urdu-language Telefilms Television Serials & a couple of Web-series. Dur-e-Fishan Saleem started her acting career in the year 2020 with a supporting role in the Urdu-language Pakistani Television Serial named Dil Ruba  This serial was aired on the Hum TV television network in Pakistan.",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(141, 0, 0, 0),
                                    height: 1.5),

                                trimLines: 3,
                                colorClickableText: Colors.black,

                                // preDataText: "AMANDA",
                                preDataTextStyle:
                                    TextStyle(fontWeight: FontWeight.w500),
                                trimMode: TrimMode.Line,

                                trimCollapsedText: 'View more',
                                moreStyle: TextStyle(
                                  color: Color(0xFF1859dc),
                                  fontSize: 16,
                                ),
                                trimExpandedText: 'Less View',
                                lessStyle: TextStyle(
                                    color: Color(0xFF1859dc), fontSize: 16),
                              ),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Center(
                                        child: CircleAvatar(
                                          backgroundColor: Color(0xFF1859dc),
                                          radius: 10,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 8,

                                            child: Text(
                                              "\$",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 33, 100, 155)),
                                            ), //Text
                                          ), //CircleAvatar
                                        ),
                                      ),
                                      const SizedBox(width: 13),
                                      BigText(
                                          text: "Cost",
                                          color: const Color.fromARGB(
                                              162, 0, 0, 0),
                                          size: 20),
                                    ],
                                  ),
                                  BigText(
                                    text: "\$10/hr",
                                    size: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.social_distance,
                                        color: Color.fromARGB(255, 8, 71, 122),
                                      ),
                                      const SizedBox(width: 10),
                                      BigText(
                                        text: "Distance from you",
                                        color:
                                            const Color.fromARGB(162, 0, 0, 0),
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                  BigText(
                                    text: "25km",
                                    size: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Divider(
                      thickness: 4,
                      //  indent: 10,
                      //  endIndent: 10,
                      color: Color.fromARGB(20, 0, 0, 0),
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            BigText(
                                              text: " Reviews",
                                              size: 17,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            const SizedBox(height: 6),
                                            Row(
                                              children: [
                                                const FaIcon(
                                                    FontAwesomeIcons.solidStar,
                                                    color: Color(0xFFFFC846),
                                                    size: 20),
                                                const SizedBox(width: 4),
                                                BigText(
                                                  text: " 4.9",
                                                  size: 16,
                                                ),
                                                BigText(
                                                  text: " /5(1098 review)",
                                                  size: 16,
                                                  color: const Color.fromARGB(
                                                      142, 0, 0, 0),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 25,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                6, 8, 8, 8),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: const Icon(
                                            Icons.arrow_forward,
                                            size: 18,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 12),
                                    const Divider(
                                      thickness: 2,
                                      //  indent: 10,
                                      //  endIndent: 10,
                                      color: Color.fromARGB(20, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 150, left: 150),
            child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/images/profile_pic.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(color: Colors.white, width: 4),
                )),
          ),

          //top tasking
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 250, horizontal: 142),
            child: Container(
              height: 20,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.crown,
                    color: Color(0xFF1859dc),
                    size: 12,
                  ),
                  const SizedBox(width: 5),
                  SmallText(
                    text: "Top TaskKing",
                    color: const Color(0xFF1859dc),
                    size: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 25, 109, 179)),
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => const ChatPage()))),
                        child: const Icon(
                          Icons.message,
                          size: 25,
                          color: Color.fromARGB(255, 25, 109, 179),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xFFFFC846)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigText(
                              text: "Hire Now", size: 20, color: Colors.black),
                          const SizedBox(width: 10),
                          const Icon(Icons.arrow_forward_sharp,
                              size: 25, color: Colors.black)
                        ],
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
