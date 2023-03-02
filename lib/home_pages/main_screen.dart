// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:speed_code/home_pages/profile_screen.dart';
import 'package:speed_code/widgets/big_text_widget.dart';
import 'package:speed_code/widgets/small_text_widget.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                                  image: NetworkImage(
                                      "https://www.24newshd.tv/digital_images/large/2022-06-08/actress-durefishan-sees-no-harm-in-dating-once-you-are-committed-with-someone-1654675524-8004.jpg"),
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
                                  color:
                                      const Color.fromARGB(155, 255, 255, 255),
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                                  SizedBox(
                                    height: 3,
                                  ),
                                  SmallText(
                                      text:
                                          "Complete your profile before start \n hiring",
                                      size: 13,
                                      color: Colors.white70),
                                ]),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              height: 40,
                              width: 55,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFC846),
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
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: SizedBox(
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
                child: Container(
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
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 90,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 20,
                          itemBuilder: (context, position) {
                            return Container(
                              width: 90,
                              margin: EdgeInsets.only(right: 7),
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
                                    SizedBox(
                                      height: 10,
                                    ),
                                    BigText(
                                      text: "Assembly",
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
                                margin: EdgeInsets.only(bottom: 15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ProfileScreen()));
                                      },
                                      child: Container(
                                        height: 120,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  "https://reviewit.pk/wp-content/uploads/2021/01/durefishan-2-3.jpg"),
                                              fit: BoxFit.cover),
                                        ),
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
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
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  const FaIcon(
                                                    FontAwesomeIcons.crown,
                                                    color: Color(0xFF1859dc),
                                                    size: 12,
                                                  ),
                                                  SizedBox(
                                                    width: 7,
                                                  ),
                                                  SmallText(
                                                      text: "Top TaskKing",
                                                      size: 11,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFF1859dc)),
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
                                                color: Color(0xFF1859dc),
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
                                                color: Color(0xFF1859dc),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 5),
                                          BigText(
                                            text: "Dur-e-Fishan",
                                            size: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          // const SizedBox(height: 5),
                                          Container(
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
                                                color: Color.fromARGB(
                                                    141, 0, 0, 0),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BigText(
                                                text: "\$10/hr ",
                                                size: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              const Icon(
                                                Icons.trip_origin,
                                                color: Color.fromARGB(
                                                    157, 0, 0, 0),
                                                size: 5,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              SmallText(
                                                text: "1K+Tasks done",
                                                size: 13,
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

                        // child: SingleChildScrollView(
                        //   scrollDirection: Axis.vertical,
                        //   child: Column(
                        //     children: [
                        //       Row(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           GestureDetector(
                        //             onTap: () {
                        //               Navigator.push(
                        //                   context,
                        //                   MaterialPageRoute(
                        //                       builder: (context) =>
                        //                           const ProfileScreen()));
                        //             },
                        //             child: Container(
                        //               height: 180,
                        //               width: 180,
                        //               decoration: BoxDecoration(
                        //                 borderRadius: BorderRadius.circular(30),
                        //                 image: const DecorationImage(
                        //                     image: NetworkImage(
                        //                         "https://reviewit.pk/wp-content/uploads/2021/01/durefishan-2-3.jpg"),
                        //                     fit: BoxFit.cover),
                        //               ),
                        //               child: Stack(
                        //                 children: [
                        //                   Padding(
                        //                     padding: const EdgeInsets.fromLTRB(
                        //                         15, 8, 30, 0),
                        //                     child: Container(
                        //                       height: 25,
                        //                       width: 120,
                        //                       decoration: BoxDecoration(
                        //                         color: Colors.white,
                        //                         borderRadius:
                        //                             BorderRadius.circular(15),
                        //                       ),
                        //                       child: Row(
                        //                         mainAxisAlignment:
                        //                             MainAxisAlignment.center,
                        //                         children: [
                        //                           const FaIcon(
                        //                             FontAwesomeIcons.crown,
                        //                             color: Color.fromARGB(
                        //                                 237, 33, 100, 243),
                        //                             size: 14,
                        //                           ),
                        //                           SmallText(
                        //                               text: "  Top TaskKing",
                        //                               size: 13,
                        //                               fontWeight:
                        //                                   FontWeight.bold,
                        //                               color:
                        //                                   const Color.fromARGB(
                        //                                       237,
                        //                                       33,
                        //                                       100,
                        //                                       243)),
                        //                         ],
                        //                       ),
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //             ),
                        //           ),
                        //           Padding(
                        //             padding: const EdgeInsets.fromLTRB(
                        //                 10, 10, 10, 10),
                        //             child: Column(
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.start,
                        //               children: [
                        //                 Row(
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.spaceBetween,
                        //                   children: [
                        //                     BigText(
                        //                       text: "INDIVIDUAL",
                        //                       size: 14,
                        //                       color: Colors.lightBlue,
                        //                       fontWeight: FontWeight.bold,
                        //                     ),
                        //                     const SizedBox(width: 6),
                        //                     const Icon(
                        //                       Icons.trip_origin,
                        //                       color:
                        //                           Color.fromARGB(157, 0, 0, 0),
                        //                       size: 5,
                        //                     ),
                        //                     const SizedBox(width: 6),
                        //                     BigText(
                        //                       text: "ASSEMBLY",
                        //                       size: 14,
                        //                       color: Colors.lightBlue,
                        //                       fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ],
                        //                 ),
                        //                 const SizedBox(height: 10),
                        //                 BigText(
                        //                   text: "Dur-e-Fishan",
                        //                   size: 22,
                        //                   fontWeight: FontWeight.w500,
                        //                 ),
                        //                 const SizedBox(height: 10),
                        //                 SmallText(
                        //                   text:
                        //                       "Get your furniture and\nequipment assembled...",
                        //                   height: 1.5,
                        //                   size: 17,
                        //                   color: Color.fromARGB(141, 0, 0, 0),
                        //                 ),
                        //                 const SizedBox(height: 19),
                        //                 Row(
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.spaceBetween,
                        //                   children: [
                        //                     BigText(
                        //                       text: "\$10/hr ",
                        //                       size: 16,
                        //                       fontWeight: FontWeight.bold,
                        //                     ),
                        //                     const Icon(
                        //                       Icons.trip_origin,
                        //                       color:
                        //                           Color.fromARGB(157, 0, 0, 0),
                        //                       size: 5,
                        //                     ),
                        //                     SmallText(
                        //                       text: "  1K+Tasks done",
                        //                       color: const Color.fromARGB(
                        //                           141, 0, 0, 0),
                        //                     ),
                        //                   ],
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //       const SizedBox(height: 20),
                        //       Row(
                        //         //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Container(
                        //             height: 180,
                        //             width: 180,
                        //             decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(30),
                        //               image: const DecorationImage(
                        //                   image: NetworkImage(
                        //                       "https://tvline.com/wp-content/uploads/2018/05/13-reasons-why-katherine-langford.jpg"),
                        //                   fit: BoxFit.cover),
                        //             ),
                        //             child: Stack(
                        //               children: [
                        //                 Padding(
                        //                   padding: const EdgeInsets.fromLTRB(
                        //                       15, 8, 30, 0),
                        //                   child: Container(
                        //                     height: 25,
                        //                     width: 120,
                        //                     decoration: BoxDecoration(
                        //                       color: Colors.white,
                        //                       borderRadius:
                        //                           BorderRadius.circular(15),
                        //                     ),
                        //                     child: Row(
                        //                       mainAxisAlignment:
                        //                           MainAxisAlignment.center,
                        //                       children: [
                        //                         const FaIcon(
                        //                           FontAwesomeIcons.crown,
                        //                           color: Color.fromARGB(
                        //                               237, 33, 100, 243),
                        //                           size: 14,
                        //                         ),
                        //                         SmallText(
                        //                             text: "  Top TaskKing",
                        //                             size: 13,
                        //                             fontWeight: FontWeight.bold,
                        //                             color: const Color.fromARGB(
                        //                                 237, 33, 100, 243)),
                        //                       ],
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //           Padding(
                        //             padding: const EdgeInsets.fromLTRB(
                        //                 10, 10, 10, 10),
                        //             child: Column(
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.start,
                        //               children: [
                        //                 Row(
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.spaceBetween,
                        //                   // crossAxisAlignment: CrossAxisAlignment.spaceBetween,
                        //                   children: [
                        //                     BigText(
                        //                       text: "INDIVIDUAL",
                        //                       size: 14,
                        //                       color: Colors.lightBlue,
                        //                       fontWeight: FontWeight.bold,
                        //                     ),
                        //                     const SizedBox(width: 6),
                        //                     const Icon(
                        //                       Icons.trip_origin,
                        //                       color:
                        //                           Color.fromARGB(157, 0, 0, 0),
                        //                       size: 5,
                        //                     ),
                        //                     const SizedBox(width: 6),
                        //                     BigText(
                        //                       text: "ASSEMBLY",
                        //                       size: 14,
                        //                       color: Colors.lightBlue,
                        //                       fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ],
                        //                 ),
                        //                 const SizedBox(height: 10),
                        //                 BigText(
                        //                   text: "Katherine Langford",
                        //                   size: 20,
                        //                   fontWeight: FontWeight.w600,
                        //                 ),
                        //                 const SizedBox(height: 10),
                        //                 SmallText(
                        //                   text:
                        //                       "Get your furniture and\nequipment assembled...",
                        //                   height: 1.5,
                        //                   size: 17,
                        //                   color: Color.fromARGB(141, 0, 0, 0),
                        //                 ),
                        //                 const SizedBox(height: 19),
                        //                 Row(
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.spaceBetween,
                        //                   children: [
                        //                     BigText(
                        //                       text: "\$10/hr ",
                        //                       size: 16,
                        //                       fontWeight: FontWeight.bold,
                        //                     ),
                        //                     const Icon(
                        //                       Icons.trip_origin,
                        //                       color:
                        //                           Color.fromARGB(157, 0, 0, 0),
                        //                       size: 5,
                        //                     ),
                        //                     SmallText(
                        //                       text: "  1K+Tasks done",
                        //                       color: const Color.fromARGB(
                        //                           141, 0, 0, 0),
                        //                     ),
                        //                   ],
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          selectedItemColor: Color(0xFF1859dc),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.task),
              label: 'Task',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_rounded),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.save),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}
