import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:speed_code/widgets/big_text_widget.dart';
import 'package:speed_code/widgets/small_text_widget.dart';
import 'package:readmore/readmore.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({key});

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
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: double.maxFinite,
              color: const Color.fromARGB(255, 25, 112, 184),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(                       
                      height: 40,width: 40,                 
                      decoration: BoxDecoration(
                      color: const Color.fromARGB(43, 64, 195, 255),
                      borderRadius: BorderRadius.circular(20),
                                       ),
                                      child: const Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 20,),
                                      ),
                    ),                 
                    BigText(text: "Tasker Profile",color: Colors.white,),
                  
                  Container(                       
                    height: 40,width: 40,                 
                    decoration: BoxDecoration(
                     color: const Color.fromARGB(43, 64, 195, 255),
                    borderRadius: BorderRadius.circular(25),
                   ),
                  child: const Icon(Icons.bookmark_outline_outlined,color: Colors.white,size: 25,),
                  ),  
                  
                  
                  
                  ],
                ),
              ),
            ),),
     
           Expanded(
            flex: 8,
            child: SizedBox(
              height: 200,
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Column(
                  children: [
                    BigText(text: "Dur-e-Fishan",color: Colors.black,size: 30,fontWeight: FontWeight.w500,),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       BigText(text: "INDIVIDUAL",size: 14,color: Colors.lightBlue,fontWeight: FontWeight.bold,),
                                      const SizedBox(width: 10),
                                      const Icon(Icons.trip_origin, color: Color.fromARGB(157, 0, 0, 0), size: 5,),
                                       const SizedBox(width: 10),
                                      BigText(text: "ASSEMBLY",size: 14,color: Colors.lightBlue,fontWeight: FontWeight.bold,),
                      ],
                     ),
                    
                    IntrinsicHeight(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              height: 100,width: 100,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(Icons.star,size: 30,color: Color.fromARGB(193, 220, 244, 3),),
                                        Text("4.9",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    const Text("rating",style: TextStyle(fontSize: 20,color: Colors.black54),),
                                  ],
                                ),
                              ),
                            ),
                             const VerticalDivider(
                                   width: 20,
                                  thickness: 5,
                                   indent: 30,
                                   endIndent: 30,
                                  color: Color.fromARGB(20, 0, 0, 0),
                                ),
                                SizedBox(
                                  height: 100,width: 100,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 20, 0, 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(Icons.task,size: 25,color: Color.fromARGB(166, 3, 168, 244),),
                                            Text("1098",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                         const SizedBox(height: 10,),
                                         const Text("Task Done",style: TextStyle(fontSize: 17,color: Colors.black54),),
                                      ],
                                    ),
                                  ),
                                ),
                        const VerticalDivider(
                                   width: 20,
                                  thickness: 5,
                                   indent: 30,
                                   endIndent: 30,
                                  color: Color.fromARGB(20, 0, 0, 0),
                                ),
                            SizedBox(
                              height: 100,width: 100,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(5, 20, 0, 10),
                                child: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Icon(Icons.timer,size: 25,color: Color.fromARGB(166, 3, 168, 244),),
                                              Text("1 hour",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                          const SizedBox(height: 10,),
                                           const Text("Avg.job done",style: TextStyle(fontSize: 14,color: Colors.black54,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
              
                const Divider(
           thickness: 5,
                   indent: 20,
                  endIndent: 20,
                  color: Color.fromARGB(20, 0, 0, 0),
                   ),
                    
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.fromLTRB(15, 10, 0, 5),
                     child: BigText(text: "About Tasker",size: 23,fontWeight: FontWeight.w500,),
                   ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 10, 10),
                      child: ReadMoreText( "Dur-e-Fishan Saleem was born on Sunday; 14th January, 1996 in Lahore, Punjab, Islamic Republic of Pakistan. Her Age (As on 01/10/2022) is 26 Years 08 months and 18 Days (ie. 320 months 18 Days or; 1303 Weeks 06 Days or 9757 Days or 234168 Hours or 14050080 minutes or 843004800 seconds. She has a Pakistani NationalityDur-e-Fishan Saleem is a Pakistani Actress,  a Beautiful Model. She is predominantly known for her work in the Pakistani Urdu-language Telefilms Television Serials & a couple of Web-series. Dur-e-Fishan Saleem started her acting career in the year 2020 with a supporting role in the Urdu-language Pakistani Television Serial named Dil Ruba  This serial was aired on the Hum TV television network in Pakistan.",
                    style: TextStyle(fontSize:20,color: Color.fromARGB(129, 0, 0, 0) ),
                       
                         trimLines: 2,
                         colorClickableText: Colors.black,
                        
                       // preDataText: "AMANDA",
                        preDataTextStyle: TextStyle(fontWeight: FontWeight.w500),
                         trimMode: TrimMode.Line,

                         trimCollapsedText: 'Show more',
                         moreStyle:TextStyle(color: Colors.black,fontSize: 16,),
                         trimExpandedText: 'Show less', 
                         lessStyle:TextStyle(color: Colors.black,fontSize: 16) ,                                                                      
                       ),
                    ),
                              
                    
                       Padding(
                         padding: const EdgeInsets.fromLTRB(18, 10, 20, 0),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(
                              children: [
                                Container(
                                  height: 30,width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                   border: Border.all(color: const Color.fromARGB(255, 33, 100, 155),width:3 ,
                                  ),
                                ),
                                child:const Padding(
                                  padding:  EdgeInsets.fromLTRB(5, 1, 1, 1),
                                  child: Text("\$",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 33, 100, 155)),),
                                ),
                                ),
                                const SizedBox(width: 13),
                                BigText(text: "Cost",color: Color.fromARGB(162, 0, 0, 0),size: 23,),
                              ],
                             ),
                             BigText(text: "\$10/hr"),
                           ],
                         ),
                       ),

                         Padding(
                         padding: const EdgeInsets.fromLTRB(18, 10, 20, 20),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(
                              children: [
                                const Icon(Icons.social_distance,color: Color.fromARGB(255, 8, 71, 122),),
                                
                                const SizedBox(width: 13),
                                BigText(text: "Distance from you",color: const Color.fromARGB(162, 0, 0, 0),size: 23,),
                              ],
                             ),
                             BigText(text: "25km"),
                           ],
                         ),
                       ),

         const Divider(
           thickness: 5,
              indent: 20,
              endIndent: 20,
              color: Color.fromARGB(20, 0, 0, 0),
               ),
                 
                 Padding(
                   padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(text: " Reviews",size: 24,),
                          const SizedBox(height: 7),
                          Row(
                            children: [
                              const Icon(Icons.star,size: 30,),
                              BigText(text: " 4.9",size: 23,),
                              BigText(text: " /5(1098 review)",color: Color.fromARGB(172, 0, 0, 0),),
                            ],
                          ),
                        ],
                      ),
                            Container(                     
                            height: 35,width: 50,
                             decoration: BoxDecoration(
                              color: const Color.fromARGB(22, 8, 8, 8),
                              borderRadius: BorderRadius.circular(16),
                            ),
                              child:const Icon(Icons.arrow_forward,size: 25,),
                          ),
                    ],
                   ),
                 ),

         const Divider(
           thickness: 5,
              indent: 20,
              endIndent: 20,
              color: Color.fromARGB(8, 0, 0, 0),
               ), 

                 ],
                ),
              ),
            ),
                
          
           
           
                  ],
                ),
                
              ),
                 
           
            ),), 
        ],
       ),
     
       Padding(
         padding: const EdgeInsets.all(140),
         child: Container(
          height: 130,
          width: 130,        
          decoration: BoxDecoration(
           image: const DecorationImage(
           image: NetworkImage("https://reviewit.pk/wp-content/uploads/2021/01/durefishan-2-3.jpg"),
            fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(70),
          ),
         ),
       ),
       Padding(
         padding: const EdgeInsets.fromLTRB(130, 240, 100, 0),
         child: Container(
          height: 30,width: 160,
          decoration: BoxDecoration(
           color: Colors.white,
          borderRadius: BorderRadius.circular(15),
         ),
          child: Row(
          children: [
          IconButton(     
         icon: const FaIcon(FontAwesomeIcons.crown), color: Color.fromARGB(237, 33, 100, 243),iconSize: 18,
          onPressed: () { }
         ),
         SmallText(text: "Top TaskKing",color: Color.fromARGB(237, 33, 100, 243))
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
                color: Color.fromARGB(255, 25, 109, 179),
                borderRadius: BorderRadius.only(topRight:Radius.circular(20),topLeft: Radius.circular(20)),
              ),
             
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.message,size: 35,color:Color.fromARGB(255, 25, 109, 179) ,),
                  ),
                  Container(
                    height: 60,
                    width: 200,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigText(text: "Hire Now",size: 25,color:const Color.fromARGB(255, 25, 109, 179) ),
                        const SizedBox(width: 10),
                        const Icon(Icons.arrow_forward_sharp,size: 25,color:Color.fromARGB(255, 25, 109, 179) )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            ),
          )


    ], ),
    );
  }
}