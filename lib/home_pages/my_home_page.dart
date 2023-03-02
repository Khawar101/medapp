import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:speed_code/home_pages/main_screen.dart';
import 'package:speed_code/widgets/big_text_widget.dart';
import 'package:speed_code/widgets/small_text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black,
         body: Column(          
          children: [         
            Expanded(
              flex: 4,
              child:Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.blue,    
                  image: DecorationImage(
                   // 
                    image: NetworkImage("https://propakistani.pk/lens/wp-content/uploads/2023/02/330379129_104906095811768_2983100813903467988_n.jpg"),),             
                ),
             
               
              ) ,
              ),




              Expanded(
                flex: 3,
                child: Container(
                //    margin: EdgeInsets.only(top: 20,bottom: 20),
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                   color: Colors.white,
                  
                  ),
                 padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Center(
                    child: Column(
                     
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: BigText(text: "Get Your Tasks Done \nWith Just A Few Taps",size: 30, fontWeight: FontWeight.w500, )),
                        const SizedBox(height: 15,),
                        Align(
                          alignment: Alignment.center,
                          child: SmallText(text: "Find the right person for job \n       fast and hassle free",color: Color.fromARGB(179, 0, 0, 0),size: 20,)),
                    
                          
                          Container(
                            margin:const EdgeInsets.fromLTRB(20, 50, 20, 15),
                            height: 60,
                            width: double.infinity,
                             decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(60),
                            ),
                            child: Center(child: BigText(text: "Get Started",size: 22,fontWeight: FontWeight.w500, )),
                          ),  
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                            },
                            child: Container(
                               margin: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                              height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(width: 2,color: Color.fromARGB(110, 0, 0, 0)),
                                  borderRadius: BorderRadius.circular(60),
                                 
                               ), 
                               child: Center(child: BigText(text: "I already have an account",color: Colors.blueAccent,size: 20,fontWeight: FontWeight.bold,)),
                             
                              
                            ),
                          ),
                      ],
                    ),
                  ),
              ),),
          ],
         ),


    );
  }
}