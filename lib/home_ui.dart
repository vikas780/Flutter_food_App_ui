
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final mov = [

      "assets/bur.jpg",
      "assets/cake1.jpg",
      "assets/fruites1.jpg",
      "assets/ice.jpg",
      "assets/vege1.jpg",
      "assets/hot12.jpg"

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 12.0, top: 30.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("KOJO", style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Raleway-SemiBold',
                          letterSpacing: 2,
                          fontWeight: FontWeight.w400
                      ),
                      ),
                      IconButton(icon: Icon(Icons.shopping_bag ,
                        size: 20,

                      ),
                          onPressed: (){}
                      )

                    ],

                  ),
                ),
                Padding(padding: const EdgeInsets.only(top: 7,left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Breakfast",
                        style: TextStyle(
                          fontFamily: 'Raleway-SemiBold',
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.only(top: 25, left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Until", style: TextStyle(
                        fontFamily: 'Raleway-SemiBold',
                        fontSize: 17,
                        fontWeight: FontWeight.w200,
                      ),
                      ),
                      Text("12pm", style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),)
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 120,


                        child:ListView.separated(
                          scrollDirection:Axis.horizontal,

                          separatorBuilder: (context,index ) => SizedBox(width: 10,),
                          itemCount: mov.length,
                          itemBuilder: (context , index) => ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Container(
                              width:MediaQuery.of(context).size.width/5,
                              height: 10,

                              decoration: BoxDecoration(

                                  image:DecorationImage(

                                      image: new AssetImage(mov[index]) ,//NetworkImage(mov[index]),
                                     // fit: BoxFit.cover,

                                  ),

                              ),

                            ),
                          ),
                        ),

                      ),
                    ],

                  ),
                ),
                Padding(padding: const EdgeInsets.only(top :50, left: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Grab & Go",style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway-SemiBold',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2,

                      ),)
                    ],
                  ),

                ),
                Padding(padding: const EdgeInsets.only(top: 25, left: 40),
                  child: Stack(
                    children: [
                      Container(
                        height: 160,
                        width: 335,
                        decoration: BoxDecoration(

                            color: Colors.white.withOpacity(1),
                            borderRadius: BorderRadius.circular(23),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(4, 8),
                                  color: HexColor('#f4f4f4'),
                                  blurRadius: 15),
                              BoxShadow(
                                  offset: Offset(-5, -12),
                                  color: HexColor('#e8e8e8'),//Colors.white.withOpacity(0.85),
                                  blurRadius: 5)
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              // child: Container(
                              //   height:45,
                              //   width:100,
                              //   decoration: BoxDecoration(
                              //       color: Colors.white.withOpacity(1),
                              //     borderRadius: BorderRadius.circular(20.0),
                              //      boxShadow: [
                              //        BoxShadow(
                              //            offset: Offset(-2, 1),
                              //            color: Colors.black38,
                              //            blurRadius: 10),
                              //        BoxShadow(
                              //            offset: Offset(-10, -10),
                              //            color: Colors.white.withOpacity(0.85),
                              //            blurRadius: 10)
                              //    ],
                              //   ),


                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(icon: Icon(Icons.star,
                                    color: HexColor('#F3B949'),
                                  ), onPressed: null),

                                  Text("Fast Food",
                                    style: TextStyle(
                                      fontSize: 18,
                                      //color: HexColor('#FF7171'),
                                      fontFamily: 'Raleway-SemiBold',
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: 0,

                                    ),
                                  ),

                                ],
                              ),



                              //),
                            ),
                            Padding(padding: const EdgeInsets.only(top:1 ,left: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("RS. 99", style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Raleway-SemiBold',
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 0,

                                  ),
                                  ),
                                  Image.asset("assets/hd.png",
                                    height: 100,

                                    alignment: Alignment.topRight,
                                    width: 200,
                                  )
                                ],
                              ),
                            ),


                          ],
                        ),

                      )
                    ],
                  ),
                ),


                Padding(padding: const EdgeInsets.only(top: 22, left: 40 ,bottom: 20
                ),
                  child: Stack(
                    children: [
                      Container(
                        height: 160,
                        width: 335,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(1),
                            borderRadius: BorderRadius.circular(23),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(4, 7),
                                  color: Colors.black12,
                                  blurRadius: 5),
                              BoxShadow(
                                  offset: Offset(-3, -13),
                                  color: HexColor('#f0f0f0'),
                                  blurRadius: 15)
                            ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              // child: Container(
                              //   height:45,
                              //   width:100,
                              //   decoration: BoxDecoration(
                              //       color: Colors.white.withOpacity(1),
                              //     borderRadius: BorderRadius.circular(20.0),
                              //      boxShadow: [
                              //        BoxShadow(
                              //            offset: Offset(-2, 1),
                              //            color: Colors.black38,
                              //            blurRadius: 10),
                              //        BoxShadow(
                              //            offset: Offset(-10, -10),
                              //            color: Colors.white.withOpacity(0.85),
                              //            blurRadius: 10)
                              //    ],
                              //   ),


                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(icon: Icon(Icons.star,
                                    color: HexColor('#F3B949'),
                                  ), onPressed: null),

                                  Text("Fast Food",
                                    style: TextStyle(
                                      fontSize: 18,
                                      //color: HexColor('#FF7171'),
                                      fontFamily: 'Raleway-SemiBold',
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: 0,

                                    ),
                                  ),

                                ],
                              ),



                              //),
                            ),
                            Padding(padding: const EdgeInsets.only(top:1 ,left: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("RS. 79", style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Raleway-SemiBold',
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 0,

                                  ),
                                  ),
                                  Image.asset("assets/ho.png",
                                    height: 100,
                                    alignment: Alignment.topRight,
                                    width: 200,
                                  )
                                ],
                              ),
                            ),


                          ],
                        ),

                      )
                    ],
                  ),
                ),


              ],
            ),

          ),
        )
    );
  }
}
