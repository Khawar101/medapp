import 'package:speed_code/models/services.dart';
import 'package:speed_code/ui/services/service_detail_screen.dart';
import 'package:speed_code/widgets/small_text_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:speed_code/widgets/big_text_widget.dart';

List<Services> services = [
  Services(name: 'Laundry'),
  Services(name: 'Cleaning'),
  Services(name: 'Repairing'),
  Services(name: 'Painting'),
  Services(name: 'Delivery'),
  Services(name: 'Beauty'),
  Services(name: 'Grocery'),
];

// List<ChatUsers> services = [
//   ChatUsers(text: "Jane Russel", secondaryText: "Awesome Setup", image: "assets/images/user.png", time: "Now"),
//   ChatUsers(text: "Glady's Murphy", secondaryText: "That's Great", image: "assets/images/userImage2.jpeg", time: "Yesterday"),
//   ChatUsers(text: "Jorge Henry", secondaryText: "Hey where are you?", image: "assets/images/userImage3.jpeg", time: "31 Mar"),
//   ChatUsers(text: "Philip Fox", secondaryText: "Busy! Call me in 20 mins", image: "assets/images/userImage4.jpeg", time: "28 Mar"),
//   ChatUsers(text: "Debra Hawkins", secondaryText: "Thankyou, It's awesome", image: "assets/images/userImage5.jpeg", time: "23 Mar"),
//   ChatUsers(text: "Jacob Pena", secondaryText: "will update you in evening about its further schedule", image: "assets/images/userImage6.jpeg", time: "17 Mar"),
//   ChatUsers(text: "Andrey Jones", secondaryText: "Can you please share the file?", image: "assets/images/userImage7.jpeg", time: "24 Feb"),
//   ChatUsers(text: "John Wick", secondaryText: "How are you?", image: "assets/images/userImage8.jpeg", time: "18 Feb"),
// ];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                color: const Color(0xFF1859dc),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/profile_pic.png"),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BigText(
                                    text: "Welcome",
                                    size: 15,
                                    color: const Color.fromARGB(
                                        155, 255, 255, 255),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Dhaira Danuatra",
                                    style: GoogleFonts.ibmPlexSans(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.8),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(78, 64, 195, 255),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BigText(
                                      text: "Complete your profile",
                                      size: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    SmallText(
                                        text:
                                            "Complete your profile before start \n hiring",
                                        size: 13,
                                        color: Colors.white70),
                                  ]),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                height: 40,
                                width: 55,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFC846),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Image.asset(
                                  "assets/icons/arrow_right.png",
                                  height: 30,
                                  width: 30,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 20,
                            width: double.maxFinite,
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white12,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    height: 20,
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          (MediaQuery.of(context).size.width *
                                              0.6),
                                          2,
                                          0,
                                          0),
                                      child: BigText(
                                        text: "80%",
                                        size: 13,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BigText(
                            text: "Popular Task",
                            size: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Container(
                              height: 25,
                              width: 35,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(6, 8, 8, 8),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Icon(
                                Icons.arrow_forward,
                                size: 18,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 90,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: services.length,
                          itemBuilder: (context, position) {
                            return Container(
                              width: 90,
                              margin: const EdgeInsets.only(right: 7),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(12, 8, 8, 8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14.0, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color:
                                            const Color.fromARGB(17, 0, 0, 0),
                                      ),
                                      child: const Icon(Icons.check_box_sharp,
                                          size: 20, color: Color(0xFF1859dc)),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    BigText(
                                      text: services[position].name,
                                      size: 13,
                                      color: Colors.black54,
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BigText(
                              text: "Trending Tasker",
                              size: 20,
                              fontWeight: FontWeight.w500,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Container(
                                height: 25,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(6, 8, 8, 8),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: const Icon(
                                  Icons.arrow_forward,
                                  size: 18,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: ListView.builder(
                            itemCount: 20,
                            itemBuilder: (context, position) {
                              return Container(
                                margin: const EdgeInsets.only(bottom: 15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ServiceDetailScreen()));
                                      },
                                      child: Container(
                                        height: 120,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"),
                                              fit: BoxFit.cover),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 7,
                                                vertical: 7,
                                              ),
                                              height: 21,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  const SizedBox(
                                                    width: 7,
                                                  ),
                                                  const FaIcon(
                                                    FontAwesomeIcons.crown,
                                                    color: Color(0xFF1859dc),
                                                    size: 12,
                                                  ),
                                                  const SizedBox(
                                                    width: 7,
                                                  ),
                                                  SmallText(
                                                      text: "Top TaskKing",
                                                      size: 11,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: const Color(
                                                          0xFF1859dc)),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 10, 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BigText(
                                                text: "INDIVIDUAL",
                                                size: 12,
                                                color: const Color(0xFF1859dc),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              const SizedBox(width: 6),
                                              const Icon(
                                                Icons.trip_origin,
                                                color: Color.fromARGB(
                                                    157, 0, 0, 0),
                                                size: 3,
                                              ),
                                              const SizedBox(width: 6),
                                              BigText(
                                                text: "ASSEMBLY",
                                                size: 12,
                                                color: const Color(0xFF1859dc),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 5),
                                          BigText(
                                            text: "John Doe",
                                            size: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          // const SizedBox(height: 5),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.6,
                                            child: Text(
                                              "Get your furniture and equipment assembled at our doorstep...",
                                              maxLines: 2,
                                              style: GoogleFonts.ibmPlexSans(
                                                height: 1.5,
                                                fontSize: 13,
                                                color: const Color.fromARGB(
                                                    141, 0, 0, 0),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Row(
                                            children: [
                                              BigText(
                                                text: "\$10/hr ",
                                                size: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Icon(
                                                Icons.trip_origin,
                                                color: Color.fromARGB(
                                                    157, 0, 0, 0),
                                                size: 5,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              SmallText(
                                                text: "1K+ Tasks done",
                                                size: 12,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromARGB(
                                                    141, 0, 0, 0),
                                              ),
                                            ],
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
                    ],
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
