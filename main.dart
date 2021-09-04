import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
 class Home extends StatefulWidget {
   const Home({Key? key}) : super(key: key);

   @override
   _HomeState createState() => _HomeState();
 }

 class _HomeState extends State<Home> {
  
  Container getResult(String title, String rating, String currentPrice, String initPrice, String saveAmount, String savePercent, String assetLoc){
    // 
    return Container(
        height: 150,
        color: Color(0xfffffeff),

        child: Row(
          children: [
            Container(
                height: 100,
                width: 150,
                child: Image.asset('$assetLoc', fit: BoxFit.cover)
            ),
            SizedBox(width: 5),
            Expanded(child: Container(
                color: Color(0xfffffeff),
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$title',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.1,
                            wordSpacing: -0.8,
                            fontSize: 15
                        )),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Container(
                          height: 15,
                          child: Image.asset('assets/rating.png', fit: BoxFit.fitHeight),
                        ),
                        SizedBox(width: 7),
                        Container(height: 15,
                            child: Text('$rating', style: TextStyle(
                                color: Color(0xff6d6d6c)
                            ),)),
                        SizedBox(height: 10),
                      ],
                    ),

                    Row(
                      children: [
                        Container(
                            height: 25,
                            child: Text('$currentPrice', style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xffb33e2f),
                                fontSize: 24
                            ))
                        ),
                        SizedBox(width: 5,),
                        Container(
                            height: 25,
                            alignment: Alignment.bottomCenter,
                            child: Text('$initPrice', style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color(0xff6d6d6c),
                                fontSize: 13,
                                decoration: TextDecoration.lineThrough
                            ))
                        ),

                        SizedBox(width: 5),

                        Container(
                            height: 25,
                            alignment: Alignment.bottomCenter,
                            child: Text('Save $saveAmount', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6d6d6c),
                              fontSize: 14,
                            ))
                        ),

                        SizedBox(width: 5),

                        Container(
                            height: 25,
                            alignment: Alignment.bottomCenter,
                            child: Text('($savePercent)', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6d6d6c),
                              fontSize: 14,
                            ))
                        )
                      ],
                    ),
                    SizedBox(height: 5,),

                    // prime Image & delivery

                    Row(
                      children: [
                        Container(
                            height: 15,
                            width: 45,
                            child: Image.asset('assets/prime.png')
                        ),
                        SizedBox(width: 5),
                        Text('FREE Delivery by '),
                        Text('Saturday', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff696868)
                        ),)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 2, 0, 0),
                      child: Text('September 5', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff696868)
                      ),),
                    )
                  ],
                )
            ))
          ],
        )
    );
  }
  
  
  
  
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         toolbarHeight: 60,
         elevation: 0.0,
         backgroundColor: Color(0xff85d9e3),
         title: Row(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Icon(Icons.arrow_back, color: Colors.black),
             SizedBox(width: 10),
             Expanded(
               child: Container(
                 height: 35,
                 width: 900,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(6)),
                   border: Border.all(width: 0.5),
                   color: Colors.white
                 ),

                 child: Row(
                   children: [
                     SizedBox(width: 5),
                     Icon(Icons.search_outlined, color: Colors.black, size: 23),
                     SizedBox(width: 10),
                     Text('amazon echo', style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.normal,
                       fontSize: 16
                     )),
                     Expanded(child: SizedBox(width: 10),),
                     Padding(
                         padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                         child: Icon(Icons.photo_camera_outlined, color: Colors.black))
                   ],
                 )
               )
             ),
             SizedBox(width: 7),
             Icon(Icons.mic_none_sharp, size: 25, color: Colors.black)
           ],
         ),
       ),

       body: ListView(
         children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 constraints: BoxConstraints(
                   minHeight: 35,
                   minWidth: double.infinity
                 ),
                 decoration: BoxDecoration(
                   color: Color(0xffb2e9f1)
                 ),
                 child: Row(
                   children: [
                     SizedBox(width: 4),
                     Padding(padding: EdgeInsets.all(5),child: Icon(Icons.location_on_outlined, color: Colors.black)),
                     SizedBox(width: 5),
                     Text('Deliver to Bhubaneswar - 7510XX', style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.w500,
                       fontSize: 12,
                     )),
                     Icon(Icons.keyboard_arrow_down_rounded)
                   ],
                 )
               ),

               Row(children: [
                 Container(
                   height: 35,
                   decoration: BoxDecoration(border: Border.all(width: 0.2, color: Colors.black54)),
                   child: Row(
                     children: [
                       Padding(
                         padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                         child: Container(
                           height: 20,
                           width: 55,
                           child: Image.asset('assets/prime.png')
                         ),
                       ),

                       Padding(
                         padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                         child: FlutterSwitch(
                           value: false, onToggle: (value){},
                           inactiveToggleColor: Color(0xffffffff),
                           inactiveColor: Color(0xffdddddd),
                           toggleSize: 15,
                           borderRadius: 10,
                           height: 25,
                           width: 45,
                         ),
                       ),
                       SizedBox(width: 5)
                     ]
                   )
                 ),

                 Expanded(child: Container(
                   constraints: BoxConstraints(
                     minHeight: 35),
                   decoration: BoxDecoration(
                     border: Border.all(width: 1.2, color: Color(0xffececec)),
                   ),
                   child: SizedBox(width: 20)
                 )),

                 Container(
                   constraints: BoxConstraints(
                     minHeight: 35),
                   decoration: BoxDecoration(
                       border: Border.all(width: 1.2, color: Color(0xffececec))
                   ),
                   padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                   child: Row(
                     children: [
                       Text('Filter', style: TextStyle(
                         color: Color(0xff468e92)
                       )),
                       Icon(Icons.keyboard_arrow_down_sharp, color: Color(0xff468e92))
                     ],
                   )
                 )
               ],),


               // sponsered product

               SizedBox(height: 10),
               Container(
                 color: Color(0xfffffeff),
                 child: Row(
                   children: [
                     Container(
                       height: 75,
                       width:150,
                       child: Image.asset('assets/echo_4.jpg', fit: BoxFit.cover)
                     ),
                     Expanded(child: Container(
                       height: 75,
                       // color: Colors.black
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('Echo show 8 (2nd Gen) - 8" HD screen with Alexa and 13 MP Camera',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.1,
                                  wordSpacing: -0.8,
                                  fontSize: 13
                                ),),
                           SizedBox(height: 5),
                           Text('Shop now')
                         ]
                       )
                     ))
                   ],
                 )
               ),

               // RESULTS

               Container(
                 width: double.infinity,
                 color: Color(0xfffffeff),
                 padding: EdgeInsets.fromLTRB(0,10,0,0),
                 margin: EdgeInsets.fromLTRB(10,0,10,0),
                 child: Text('RESULTS', style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 15
                 ))
               ),
               
               getResult('Echo Dot (3rd Gen) - #1 smart speaker brand in India with Alexa (white)', '68,186', '3,499', '4,499', '1000', '22%', 'assets/echo_1.jpg'),
               Container(color: Color(0xfffffeff), child: Text(''), height: 10),

               getResult('Echo Dot (4rd Gen) - #1 smart speaker brand in India with Alexa (White)', '14,206', '4,499', '4,499', '0', '0%', 'assets/echo_2.jpg'),
               Container(color: Color(0xfffffeff), child: Text(''), height: 10),

               getResult('Echo (4rd Gen, 2020 release) | Premimum sound powered by Dolby and Alexa (Black)', '2,150', '5,999', '9,999', '4000', '59%', 'assets/echo_3.jpg'),
               Container(color: Color(0xfffffeff), child: Text(''), height: 10),

               getResult('Echo (3rd Gen) with Alexa (Grey)', '2,150', '3,499', '4,499', '1000', '22%', 'assets/echo_1.jpg'),
               Container(color: Color(0xfffffeff), child: Text(''), height: 10)

               
             ],
           )
         ],
       )
     );
   }
 }
