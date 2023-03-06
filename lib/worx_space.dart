import 'package:dotted_border/dotted_border.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:speed_code/utils/app_utils.dart';
import 'package:speed_code/utils/app_utils.dart';
//import 'package:intl/intl.dart';

class WorxSpace extends StatefulWidget {
  const WorxSpace({Key? key}) : super(key: key);

  @override
  State<WorxSpace> createState() => _WorxSpaceState();
}

class _WorxSpaceState extends State<WorxSpace> {
  bool tapped = true;
  
 // DateTime now = DateTime.now();
 // String dateofbirth = '';
 // DateTime selectedDate = DateTime.now();

 //final DateFormat formatter = DateFormat('yyyy-MM-dd');
  bool tapped1=true;
  AppUtils utils = AppUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //  appBar: AppBar(backgroundColor: Colors.white,),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 60,horizontal: 18),
            child: Column(
            
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                   Stack(
                    
                    children:[
                       Padding(
                         padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                         child: Image.asset( "assets/icons/yield_down.png",color: const Color(0xff5450f5),width: 15),
                       ) ,                      
                       Image.asset( "assets/icons/yield_down.png",color: const Color(0xff40b0ac),width: 15),]), 
                  const SizedBox(width: 5),
                  Text("Worxspace.",style: GoogleFonts.ibmPlexSans(fontSize: 16,fontWeight: FontWeight.w500),),  
                      ],
                    ),
                   const Icon(Icons.notifications_none_outlined,size: 29,)
                  ],
                ),
                   const SizedBox(height: 25),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                           Image.asset( "assets/icons/left-arrow.png",color: Colors.black,width: 30),
                       const SizedBox(width: 12,),
                       Text("Create Task",style: GoogleFonts.ibmPlexSans(fontSize: 22,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      Text("*Required to fill",style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.red,fontWeight: FontWeight.bold ),),
                    ],
                   ),    
                    const SizedBox(height: 25),
                   //task name to start
                    Column( 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Task Name",style: GoogleFonts.ibmPlexSans(fontSize: 18,fontWeight: FontWeight.bold),),
                            const SizedBox(width: 3),
                            Text("*",style: GoogleFonts.ibmPlexSans(color: Colors.red,fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        const SizedBox(height: 16),                                                                  
                                   Container(  
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(245, 247, 249, 255),
                                        borderRadius: BorderRadius.circular(8.0)),
                                    child: Row(
                                      children:const [
                                         SizedBox(width: 20,),
                                        Expanded(
                                          child: TextField(
                                            decoration:  InputDecoration(
                                              hintText: "Task Name goes here...",
                                              hintStyle:
                                        TextStyle(color: Colors.grey, fontSize: 16),
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                                       
                                      ],
                                    ),
                                                         ),
                            const SizedBox(height: 25),
                    
                            Text("Description",style: GoogleFonts.ibmPlexMono(fontSize: 18,fontWeight: FontWeight.bold),),
                            const SizedBox(height: 18),
                            
                             SingleChildScrollView(
                               child: Container(
                                 height: 120,
                                 decoration: BoxDecoration(
                                 color: const Color.fromARGB(245, 247, 249, 255),
                                 borderRadius: BorderRadius.circular(10.0)),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                   children:const [
                                     SizedBox(width: 20,),
                           Expanded(
                                child: TextField(
                                  minLines: 2,maxLines: 6,
                                  decoration:  InputDecoration(
                                    hintText: "Task Description goes here...",
                                    hintStyle:
                                        TextStyle(color: Colors.grey, fontSize: 16),
                                    border: InputBorder.none,
                                  ),
                                ),
                                                         ),
                                                       ],
                                                     ),
                                                   ),
                             ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Text("Task Type",style: GoogleFonts.ibmPlexSans(fontSize: 18,fontWeight: FontWeight.bold),),
                          const SizedBox(width: 4),
                          Text("*",style: GoogleFonts.ibmPlexSans(color: const Color(0xFFdb3b4e),fontSize: 18,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                        GestureDetector(onTap: () {
                              setState(() {
                                tapped1 = !tapped1;
                              });
                            },                          
                              child:  tapped1 == true ?Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,color: const Color(0xFFaeb1b8),
                                )
                              ),
                                                      ):Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(color:  const Color(0xFFaeb1b8),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,color: const Color(0xFFaeb1b8),
                                )
                              ),
                                                      ) ,
                            ),
                          const SizedBox(width: 12),
                          Text("Task",style: GoogleFonts.ibmPlexSans(fontWeight: FontWeight.w500,fontSize: 15),),
                           const SizedBox(width: 12),
                            GestureDetector(onTap: () {
                              setState(() {
                                tapped = !tapped;
                              });
                            },                          
                              child:  tapped == true ?Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,color: const Color(0xFFaeb1b8),
                                )
                              ),
                                                      ):Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(color:  const Color(0xFFaeb1b8),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,color: const Color(0xFFaeb1b8),
                                )
                              ),
                                                      ) ,
                            ),
                          const SizedBox(width: 12),
                           Text("Event",style: GoogleFonts.ibmPlexSans(fontWeight: FontWeight.w500,fontSize: 15),),
                        ],
                      ),
                      const SizedBox(height: 16,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tags",style: GoogleFonts.ibmPlexSans(fontSize: 18,fontWeight: FontWeight.bold),),
                          Text("Add Tags",style: GoogleFonts.ibmPlexSans(fontWeight: FontWeight.bold,fontSize: 14,color: const Color(0xFF7271e1)),),
                        ],
                      ),
                      const SizedBox(height: 16),
                    Container(
                     //   width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(245, 247, 249, 255),
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Row(
                          children:const [
                             SizedBox(width: 20,),
                            Expanded(
                              child: TextField(
                                decoration:  InputDecoration(
                                  hintText: "Add a tag",
                                  hintStyle:
                                      TextStyle(color: Colors.grey, fontSize: 16),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                        const SizedBox(height: 25),                 
                     Row(
                       children: [
                         Text("Add People",style: GoogleFonts.ibmPlexSans(fontSize: 18,fontWeight: FontWeight.bold),),
                         const SizedBox(width: 4),
                           Text("*",style: GoogleFonts.ibmPlexSans(color: const Color(0xFFdb3b4e),fontSize: 18,fontWeight: FontWeight.bold),)
                       ],
                     ),
                    const SizedBox(height: 15),
                       Text("Add people who accept this notes to work",style: GoogleFonts.ibmPlexSans(color: Colors.grey, fontSize: 14),),
                    const SizedBox(height: 15),
                       Container(
                      
                        height: 40,width: 130,
                        decoration: BoxDecoration(
                        color: const Color(0xffe7e5fb),
                        borderRadius: BorderRadius.circular(10),  
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Image.asset( "assets/icons/add-user.png",color: const Color(0xFF5e5bd8),width: 23),
                             const SizedBox(width: 8),
                                Text("Add people",style: GoogleFonts.ibmPlexSans(color: const Color(0xFF5e5bd8),fontSize: 16,fontWeight: FontWeight.w600)),
                          ],
                        ),
                       ),
                    const SizedBox(height: 25),
                     Row(
                       children: [
                         Text("Duration",style: GoogleFonts.ibmPlexSans(fontSize: 18,fontWeight: FontWeight.bold),),
                         const SizedBox(width: 4),
                           Text("*",style: GoogleFonts.ibmPlexSans(color: const Color(0xFFdb3b4e),fontSize: 18,fontWeight: FontWeight.bold),)
                       ],
                     ),
                    const SizedBox(height: 22),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Start Date",style: GoogleFonts.ibmPlexSans(color: Colors.grey, fontSize: 14),),
                            const SizedBox(height: 10),
                     
                     
                       Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width*0.4,
                        decoration: BoxDecoration(
                        color: const Color(0xfff5f7f9),
                        borderRadius: BorderRadius.circular(10),  
                        ),
                        child:  Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            //  selectedDate==""?
                                   Text( "DD/MM/YY" ,style: GoogleFonts.ibmPlexSans(color: Colors.grey, fontSize: 16),),
                                   const SizedBox(width: 4),
                                   const Icon(Icons.today,color: Color(0xff5a58e9),),
                              //     Text(selectedDate.toString(),style: GoogleFonts.ibmPlexSans(color: Colors.grey, fontSize: 16),),
                               /*    GestureDetector(
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                    child: const Icon(Icons.today,color: Color(0xff5a58e9),)),*/
                            ],
                          ),
                        ), 
                       ),
                      ],
                     ),        
    
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Due Date",style: GoogleFonts.ibmPlexSans(color: Colors.grey, fontSize: 14),),
                            const SizedBox(height: 10),                     
                       Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width*0.4,
                        decoration: BoxDecoration(
                        color: const Color(0xfff5f7f9),
                        borderRadius: BorderRadius.circular(10),  
                        ),
                        child:  Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            //  selectedDate==""?
                                   Text( "DD/MM/YY" ,style: GoogleFonts.ibmPlexSans(color: Colors.grey, fontSize: 16),),
                                   const SizedBox(width: 4),
                                   const Icon(Icons.today,color: Color(0xff5a58e9),),
                              //     Text(selectedDate.toString(),style: GoogleFonts.ibmPlexSans(color: Colors.grey, fontSize: 16),),
                               /*    GestureDetector(
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                    child: const Icon(Icons.today,color: Color(0xff5a58e9),)),*/
                            ],
                          ),
                        ), 
                       ),
                      ],
                     ),
                    ],         
                   ),


                   const SizedBox(height: 25),
                 Text("Attachment",style: GoogleFonts.ibmPlexSans(fontSize: 18,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 18),
                   DottedBorder(
              color: const Color(0xffdee1e5),
              strokeWidth: 2, 
              dashPattern: const [6,6],              
              child: SizedBox(  
                 height:70,          
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Image.asset( "assets/icons/gallery.png",color: const Color(0xFF6360e9),width: 25),
                     const SizedBox(width: 10),
                     Text("Add Attachment",style: GoogleFonts.ibmPlexSans(fontSize: 15,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
          ),
          const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("*Maximum files size is 5MB",style: GoogleFonts.ibmPlexSans(color: Colors.grey, fontSize: 14),),
                 Text("Supported file format",style: GoogleFonts.ibmPlexSans(fontSize: 14,fontWeight: FontWeight.bold,  decoration: TextDecoration.underline,),),
              ],
            ),
            const SizedBox(height: 25),      
               Text("Additional Settings",style: GoogleFonts.ibmPlexSans(fontSize: 18,fontWeight: FontWeight.bold),),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset( "assets/icons/loop.png",color:  Colors.black,width: 25),
                    const SizedBox(width: 10),
                     Text("Repetition",style: GoogleFonts.ibmPlexSans(fontSize: 16,fontWeight: FontWeight.bold,),),
                  ],
                ),
                Container(
                 //  height: 40,width: 130,                   
                   decoration: BoxDecoration(
                    color:const Color(0xfff5f7f9),
                    borderRadius: BorderRadius.circular(6),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 8),
                     child: Row(
                                     children: [
                      Text("Dosen't repeat",style: GoogleFonts.ibmPlexSans(fontSize: 12,fontWeight: FontWeight.bold,),),
                      const SizedBox(width: 5),
                      const Icon(Icons.expand_more),
                       ],
                   
                     ),
                   ),
                ),
              ],
            ),
            const SizedBox(height: 12),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.alarm_sharp), 
                    const SizedBox(width: 10),
                     Text("Reminder me",style: GoogleFonts.ibmPlexSans(fontSize: 16,fontWeight: FontWeight.bold,),),
                  ],
                ),
                Container(
                 //  height: 40,width: 130,                   
                   decoration: BoxDecoration(
                    color:const Color(0xfff5f7f9),
                    borderRadius: BorderRadius.circular(6),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 8),
                     child: Row(
                                     children: [
                      Text("15 mint before start",style: GoogleFonts.ibmPlexSans(fontSize: 12,fontWeight: FontWeight.bold,),),
                      const SizedBox(width: 5),
                      const Icon(Icons.expand_more),
                       ],
                   
                     ),
                   ),
                ),
              ],
            ),
             const SizedBox(height: 30),
             Container(
                     //   width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(245, 247, 249, 255),
                            borderRadius: BorderRadius.circular(15)),
                       child: Center(
                        child: Text("Create Task",style: GoogleFonts.ibmPlexSans(fontSize: 18,color: Color(0xff9ea5b1),fontWeight: FontWeight.bold),),
                       ),
                      ),
                      
                                                                                                                                         
                ],
               )
              ],
            ),
          ),
        ),

    );
  }
 /*_selectDate(BuildContext context) async {
    var picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.black,
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary),
            colorScheme: const ColorScheme.light(primary: Colors.black)
                .copyWith(secondary: Colors.black),
          ),
          child: child!,
        );
      },
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
     setState(() {
        dateofbirth = formatter.format(picked);
      });
    }
  }*/


}