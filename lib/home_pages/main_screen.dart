// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:speed_code/home_pages/profile_screen.dart';
import 'package:speed_code/widgets/big_text_widget.dart';
import 'package:speed_code/widgets/small_text_widget.dart';

import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       children: [
        Expanded(
          flex: 3,
          child: Container(
           color: const Color.fromARGB(255, 52, 115, 167),
           child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 70, 20, 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            image:const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://www.24newshd.tv/digital_images/large/2022-06-08/actress-durefishan-sees-no-harm-in-dating-once-you-are-committed-with-someone-1654675524-8004.jpg"),),
                          ),
                        ),
                   
                    const SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      BigText(text: "Welcome",size: 15,color: const Color.fromARGB(155, 255, 255, 255),),
                      SizedBox(height: 4,),
                      Text( "Dhaira Danuatra", style: GoogleFonts.ibmPlexSans(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w400,letterSpacing: 0.8), ),
                     ],
                    ),
                       ],
                    ),
                    // const SizedBox(width: 80),
                       Container(                       
                        height: 40,width: 40,
                       
                        decoration: BoxDecoration(
                           color: const Color.fromARGB(78, 64, 195, 255),
                           borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(Icons.notifications,color: Colors.white,size: 25,),
                       ),
                  ],
                ),
               ),   
                 Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  height: 130,
                  width: double.maxFinite,
                  
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
                      children:[
                     Padding(
                      padding: const EdgeInsets.fromLTRB(10,10,0,0),                       
                        child: BigText(text: "Complete your profile",size: 20,color: Colors.white,fontWeight: FontWeight.w400,),
                      ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: SmallText(text: "Complete your profile before start \n hiring",color: Color.fromARGB(178, 255, 255, 255),),
                     ),
                      ]),
                       
                       Padding(
                         padding: const EdgeInsets.all(16.0),
                         child: Container(
                          height: 44,width: 65,
                         
                          decoration: BoxDecoration(
                             color: Color.fromARGB(179, 255, 235, 59),
                             borderRadius: BorderRadius.circular(25),
                          ),
                          child:const Icon(Icons.arrow_forward,size: 30,),
                         ),
                       )
                        ],),

                     
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15,7,15,4),
                      child: Container(                      
                       child: SizedBox(
                       height: 20,
                      width: double.maxFinite,                    
                       child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(131, 33, 149, 243),
                                borderRadius: BorderRadius.circular(12),
                            ),                                                         ),
                            Align(
                           alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 20,
                             width: 290,
                             decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)
                             ),
                            
                              child:Padding(
                                padding: const EdgeInsets.fromLTRB(250,2,0,0),
                                child: BigText(text: "80%",size: 14,fontWeight: FontWeight.w600,),
                              ), 
                          ),
                        ),
                      ],
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
        ),

        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 35, 0, 0),
            child: Container(             
              child: Column(              
                children: [
                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: "Popular Task",size: 25,fontWeight: FontWeight.w500,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Container(                     
                        height: 25,width: 35,
                         decoration: BoxDecoration(
                          color: const Color.fromARGB(6, 8, 8, 8),
                          borderRadius: BorderRadius.circular(16),
                        ),
                          child:const Icon(Icons.arrow_forward,size: 18,),
                      ),
                    ),
                  ],
                 ),
                  const SizedBox(height: 15),
                  SingleChildScrollView(                  
                  scrollDirection: Axis.horizontal,
                  child: 
                  Row(   
                    mainAxisAlignment: MainAxisAlignment.start,                   
                      children: [                                          
                        Container(                          
                          height: 100,width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:const Color.fromARGB(12, 8, 8, 8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Stack(
                              children: [
                               Container(
                                height: 50,width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: const Color.fromARGB(17, 0, 0, 0),
                                ),
                                child:  const Icon(Icons.check_box_sharp,color: Color.fromARGB(255, 33, 149, 243)),
                              ),                              
                             Align(
                                alignment: Alignment.bottomCenter,
                                child: BigText(  text: "Assembly",size: 16,color: Colors.black54,),                                                                
                              )
                             ],
                            ),
                          ),
                         ),                       
                       const SizedBox(width: 10),
                        Container(                          
                          height: 100,width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                           color:const Color.fromARGB(12, 8, 8, 8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Stack(
                              children: [
                               Container(
                                height: 50,width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                 color: const Color.fromARGB(17, 0, 0, 0),
                                ),
                                child: const Icon(Icons.cleaning_services,color: Color.fromARGB(255, 33, 149, 243)),
                              ),                              
                             Align(
                                alignment: Alignment.bottomCenter,
                                child: BigText(  text: "Cleaning",size: 16,color: Colors.black54,),                                                                
                              )
                             ],
                            ),
                          ),
                         ),
                        const SizedBox(width: 10),
                        Container(                          
                          height: 100,width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:const Color.fromARGB(12, 8, 8, 8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Stack(
                              children: [
                               Container(
                                height: 50,width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: const Color.fromARGB(17, 0, 0, 0),
                                ),
                                child: const Icon(Icons.electrical_services,color: Color.fromARGB(255, 33, 149, 243),),
                              ),                              
                             Align(
                                alignment: Alignment.bottomCenter,
                                child: BigText(  text: "Electricity",size: 16,color: Colors.black54,),                                                                
                              )
                             ],
                            ),
                          ),
                         ),
                        const SizedBox(width: 10),
                         Container(                          
                          height: 100,width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:const Color.fromARGB(12, 8, 8, 8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Stack(
                              children: [
                               Container(
                                height: 50,width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: const Color.fromARGB(17, 0, 0, 0),
                                ),
                                child: const Icon(Icons.moving,color: Color.fromARGB(255, 33, 149, 243)),
                              ),                              
                             Align(
                                alignment: Alignment.bottomCenter,
                                child: BigText(  text: "Moving",size: 16,color: Colors.black54,),                                                                
                              )
                             ],
                            ),
                          ),
                         ),                        
                        ],
                       ),
                      ),
                 
                   Padding(
                     padding: const EdgeInsets.fromLTRB(0, 36, 0, 20),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [               
                      BigText(text: "Trending Tasker",size: 25,fontWeight: FontWeight.w500,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0, 20, 0),
                        child: Container(                     
                          height: 35,width: 50,
                           decoration: BoxDecoration(
                             color: const Color.fromARGB(6, 8, 8, 8),
                          borderRadius: BorderRadius.circular(16),
                        ),
                          child:const Icon(Icons.arrow_forward,size: 18,),
                        ),
                      ),
                     ],
                    ),
                   ),
                   
                   Expanded(
                     child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder:(context)=>const ProfileScreen()));
                                },
                                child: Container(
                                 height: 180,width: 180,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(30),
                                   image: const DecorationImage(
                                     image: NetworkImage("https://reviewit.pk/wp-content/uploads/2021/01/durefishan-2-3.jpg"),
                                   fit: BoxFit.cover),                  
                                 ),
                                 child: Stack(
                                   children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(15,8, 30, 0),
                                    child: Container(
                                       height: 25,width: 120,
                                       decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                       ),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                     const FaIcon(FontAwesomeIcons.crown,color: Color.fromARGB(237, 33, 100, 243) ,size: 14,),
                                      
                                        SmallText(text: "  Top TaskKing",size: 13,fontWeight:FontWeight.bold ,color: const Color.fromARGB(237, 33, 100, 243)),
                                       ],
                                    ),
                                   ),
                                  ),
                                 ],  
                                ),    
                                                           ),
                              ),    
                             
                             Padding(
                               padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                               child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   
                                    children: [
                                      BigText(text: "INDIVIDUAL",size: 14,color: Colors.lightBlue,fontWeight: FontWeight.bold,),
                                      const SizedBox(width: 6),
                                      const Icon(Icons.trip_origin, color: Color.fromARGB(157, 0, 0, 0), size: 5,),
                                       const SizedBox(width: 6),
                                      BigText(text: "ASSEMBLY",size: 14,color: Colors.lightBlue,fontWeight: FontWeight.bold,),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  BigText(text: "Dur-e-Fishan",size: 22,fontWeight: FontWeight.w500,),
                                  const SizedBox(height: 10),
                                  SmallText(text: "Get your furniture and\nequipment assembled...",height: 1.5,size: 17,color: Color.fromARGB(141, 0, 0, 0),),
                                  const SizedBox(height: 19),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  
                                  children: [ 
                                  BigText(text: "\$10/hr " ,size: 16,fontWeight: FontWeight.bold,),
                                  const Icon(Icons.trip_origin, color: Color.fromARGB(157, 0, 0, 0), size: 5,),
                                  SmallText(text: "  1K+Tasks done",color: const Color.fromARGB(141, 0, 0, 0),),
                                 ],),                                                      
                                 ],
                                ),
                             ),                    
                          ],
                       ),
                     
                     const SizedBox(height: 20),
                        Row(
                     //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                               height: 180,width: 180,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(30),
                                 image: const DecorationImage(
                                   image: NetworkImage("https://tvline.com/wp-content/uploads/2018/05/13-reasons-why-katherine-langford.jpg"),
                                 fit: BoxFit.cover),                  
                               ),
                               child: Stack(
                                 children: [
                                 Padding(
                                    padding: const EdgeInsets.fromLTRB(15,8, 30, 0),
                                    child: Container(
                                       height: 25,width: 120,
                                       decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                       ),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                     const FaIcon(FontAwesomeIcons.crown,color: Color.fromARGB(237, 33, 100, 243) ,size: 14,),
                                      
                                        SmallText(text: "  Top TaskKing",size: 13,fontWeight:FontWeight.bold ,color: const Color.fromARGB(237, 33, 100, 243)),
                                       ],
                                    ),
                                   ),
                                  ),
                               ],  
                              ),    
                             ),    
                             
                             Padding(
                               padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                               child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   // crossAxisAlignment: CrossAxisAlignment.spaceBetween,
                                    children: [
                                      BigText(text: "INDIVIDUAL",size: 14,color: Colors.lightBlue,fontWeight: FontWeight.bold,),
                                      const SizedBox(width: 6),
                                      const Icon(Icons.trip_origin, color: Color.fromARGB(157, 0, 0, 0), size: 5,),
                                       const SizedBox(width: 6),
                                      BigText(text: "ASSEMBLY",size: 14,color: Colors.lightBlue,fontWeight: FontWeight.bold,),
                                    ],
                                  ),
                                 const SizedBox(height: 10),
                                  BigText(text: "Katherine Langford",size: 20,fontWeight: FontWeight.w600,),
                                  const SizedBox(height: 10),
                                  SmallText(text: "Get your furniture and\nequipment assembled...",height: 1.5,size: 17,color: Color.fromARGB(141, 0, 0, 0),),
                                  const SizedBox(height: 19),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  
                                  children: [ 
                                  BigText(text: "\$10/hr " ,size: 16,fontWeight: FontWeight.bold,),
                                  const Icon(Icons.trip_origin, color: Color.fromARGB(157, 0, 0, 0), size: 5,),
                                  SmallText(text: "  1K+Tasks done",color: const Color.fromARGB(141, 0, 0, 0),),
                                 ],),                                             
                                 ],
                                ),
                             ),                    
                          ],
                                     ),
                     
                     
                     
                        ],
                      ),
                                    ),
                   ),
                ],
              ),
                                 
                  
            ),
          ),
        ),
       ],
      ),
     bottomNavigationBar: Container(
      height: 80,
       child: BottomNavigationBar(
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