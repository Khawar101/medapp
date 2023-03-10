import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speed_code/ui/chat/chat_messaging_screen.dart';




class ChatListScreen extends StatefulWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfffafafa),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 18),
          //  margin: EdgeInsets.fromLTRB(18, 60, 18, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width * 0.68,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            size: 35,
                            color: Color(0xff959595),
                          ),
                          hintText: "Search Messages...",
                          hintStyle:
                              TextStyle(color: Color(0xffb7b7b7), fontSize: 16),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width * 0.16,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.edit_square,
                      size: 35,
                      color: Color(0xffa2a2a2),
                    ),
                  ),
                ],
              ),
               const SizedBox(height: 25),
              Expanded(
                child: MediaQuery.removePadding(
                    context: context,
                     removeTop: true,
                  child: ListView.builder(
                      shrinkWrap: true,          
                        physics: const ScrollPhysics(),
                      itemCount: 20,
                      itemBuilder: (context, position) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MessagingScreen()));
                                  },
                                  child: Container(
                                    height: 80,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const CircleAvatar(
                                                radius: 27,
                                                backgroundColor: Colors.black,
                                                backgroundImage: AssetImage(
                                                    'assets/images/profile_pic.png'),
                                                child: Align(
                                                  alignment: Alignment.bottomRight,
                                                  child: CircleAvatar(
                                                    radius: 7,
                                                    backgroundColor:
                                                        Color(0xff4c8991),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Shadab Khan",
                                                    style: GoogleFonts.ibmPlexSans(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Row(
                                                    children: const [
                                                      Icon(Icons.done_all),
                                                      SizedBox(width: 5),
                                                      Text("Perfect will check it"),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              "11:30  PM",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
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
                      }),
                ),
              ),
            ],
          ),
        ),
      
      ),
    );
  }
}
