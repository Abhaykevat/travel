// import 'package:appwrite/models.dart';
// import 'package:flutter/material.dart';
// import 'package:travel/saved_data.dart';
// class HomePage extends StatefulWidget {
//   final Document data;
//    const HomePage({super.key,  this.data, });

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//   @override
//   void initState() {
//     super.initState();
//     SavedData.init();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 Image.asset('assets/mountain.jpg',
//                   width: MediaQuery.of(context).size.width,
//                   height:MediaQuery.of(context).size.height*0.36 ,
//                   fit: BoxFit.cover ,),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 40.0,right: 20.0,left: 20.0),
//                   child: Row(
//                     // mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Material(
//                         borderRadius: BorderRadius.circular(10),
//                         elevation: 3.0,
//                         child: Container(
//                           padding: EdgeInsets.all(8),
//                           child:Image.asset('assets/earth.png',width: 30,) ,
//                           decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
//                         ),
//                       ),
//                       Spacer(),
//                       Material(
//                         borderRadius: BorderRadius.circular(10),
//                         elevation: 3.0,
//                         child: Container(
//                           padding: EdgeInsets.all(8),
//                           child:Icon(Icons.add,color: Colors.blue,size: 30,) ,
//                           decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
//                         ),
//                       ),
//                       SizedBox(width: 10,),
//                       Material(
//                         borderRadius: BorderRadius.circular(60),
//                         elevation: 3,
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(60),
//                             child: Image.asset('assets/boy.jpeg',height: 50,width: 50,fit: BoxFit.cover,)),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 180.0,left: 20.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Travellers",
//                         style: TextStyle(
//                             color:Colors.white,fontSize: 60.0,
//                             fontWeight: FontWeight.bold),),
//                       Text("Travel Commmunity App",
//                         style: TextStyle(
//                             color:Color.fromARGB(205, 255,255, 255),
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold),),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(left: 30.0,right:30,top: MediaQuery.of(context).size.height/3 ),
//                   child: Material(
//                     borderRadius: BorderRadius.circular(10),
//                     elevation: 5.0,
//                     child: Container(
//                       padding: EdgeInsets.only(left:20.0),
//                       // margin: EdgeInsets.only(left: 30.0,right: 30.0,),
//                       decoration: BoxDecoration(
//                         border: Border.all(width: 1.5),
//                           borderRadius: BorderRadius.circular(10),
//                         color: Colors.white
//                       ),
//                       child: TextField(decoration: InputDecoration(border: InputBorder.none,hintText: "Search Your destination",suffixIcon: Icon(Icons.search)),),
//                     ),
//                   ),
//                 )
//               ],
//             ),

//             SizedBox(height: 40,),
//             Container(
//               margin: EdgeInsets.only(left: 30.0,right: 30),
//               child: Material(
//                 borderRadius: BorderRadius.circular(20),
//                 elevation: 3.0,
//                 child: Container(
//                   decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 20.0,left: 10.0),
//                         child: Row(
//                           children: [
//                             ClipRRect(
//                               borderRadius:BorderRadius.circular(30),
//                                 child: Image.asset("assets/boy.jpeg",height: 50,width: 50,fit: BoxFit.cover,)),
//                             SizedBox(width: 15,),
//                             Text("abay",
//                               style: TextStyle(
//                                   color:Colors.black,
//                                   fontSize: 20.0,
//                                   fontWeight: FontWeight.bold),),

//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 20,),
//                       Image.network("https://cloud.appwrite.io/v1/storage/buckets/679b508400283c83da4c/files/${widget.data.data["image"]}/view?project=6799d57a003d9c3f87d1&project=6799d57a003d9c3f87d1"),
//                       // Image.network("https://cloud.appwrite.io/v1/storage/buckets/679b508400283c83da4c/files/679b5e777d1d86723993/view?project=6799d57a003d9c3f87d1&project=6799d57a003d9c3f87d1",fit: BoxFit.cover,),
//                       SizedBox(height: 5,),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10),
//                         child: Row(
//                           children: [
//                             Icon(Icons.location_on_sharp,color: Colors.lightBlue,),
//                             Text("Taj mahal Agra India",
//                               style: TextStyle(
//                                   color:Colors.black,
//                                   fontSize: 18.0,
//                                   fontWeight: FontWeight.bold),),
//                           ],),
//                       ),
//                       SizedBox(height: 5,),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10),
//                         child: Text("Lorem Ipsum is simply dummy text of the printing and typecasting industry.",
//                           style: TextStyle(
//                               color:Color.fromARGB(179, 0, 0, 0),
//                               fontSize: 15,
//                               fontWeight: FontWeight.w500),),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 20),
//                         child: Row(children: [
//                           Icon(Icons.favorite_border_outlined,color: Colors.black54,size: 30,),
//                           SizedBox(width: 5,),
//                           Text("Like",
//                             style: TextStyle(
//                                 color:Colors.black,
//                                 fontSize: 18.0,
//                                 fontWeight: FontWeight.w500),),
//                           SizedBox(width: 30,),
//                           Icon(Icons.comment_outlined,color: Colors.black54,size: 28,),
//                           SizedBox(width: 5,),
//                           Text("Comment",
//                             style: TextStyle(
//                                 color:Colors.black,
//                                 fontSize: 18.0,
//                                 fontWeight: FontWeight.w500),),

//                         ],),
//                       ),
//                       SizedBox(height: 30,)
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:appwrite/models.dart';
import 'package:flutter/material.dart';
import 'package:travel/database.dart';
import 'package:travel/pages/add_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Document> allEvents = [];

  @override
  void initState() {
    loadEvents();
    super.initState();
  }

  loadEvents() async {
    final events = await getAllEvents();
    setState(() {
      allEvents = events;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/mountain.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.36,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 40.0, right: 20.0, left: 20.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 3.0,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Image.asset(
                            'assets/earth.png',
                            width: 30,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Spacer(),
                      // Material(
                      //   borderRadius: BorderRadius.circular(10),
                      //   elevation: 3.0,
                      //   child: Container(
                      //     padding: EdgeInsets.all(8),
                      //     child: Icon(
                      //       Icons.add,
                      //       color: Colors.blue,
                      //       size: 30,
                      //     ),
                      //     decoration: BoxDecoration(
                      //         color: Colors.white,
                      //         borderRadius: BorderRadius.circular(10)),
                      //   ),
                      // ),
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 3.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddPage()),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Icon(
                              Icons.add,
                              color: Colors.blue,
                              size: 30,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        width: 10,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(60),
                        elevation: 3,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset(
                              'assets/boy.jpeg',
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 180.0, left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Travellers",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 60.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Travel Commmunity App",
                        style: TextStyle(
                            color: Color.fromARGB(205, 255, 255, 255),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 30.0,
                      right: 30,
                      top: MediaQuery.of(context).size.height / 3),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 5.0,
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0),
                      // margin: EdgeInsets.only(left: 30.0,right: 30.0,),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.5),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search Your destination",
                            suffixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0, right: 30),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 3.0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/boy.jpeg",
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                )),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "abay",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      allEvents.length > 0
                          ? Image.network(
                              "https://cloud.appwrite.io/v1/storage/buckets/679b508400283c83da4c/files/${allEvents[1].data["image"]}/view?project=6799d57a003d9c3f87d1&project=6799d57a003d9c3f87d1")
                          : SizedBox(),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_sharp,
                              color: Colors.lightBlue,
                            ),
                            Text(
                              "Taj mahal Agra India",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typecasting industry.",
                          style: TextStyle(
                              color: Color.fromARGB(179, 0, 0, 0),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.black54,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Like",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.comment_outlined,
                              color: Colors.black54,
                              size: 28,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Comment",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:appwrite/models.dart';
// import 'package:flutter/material.dart';
// import 'package:travel/database.dart';
// import 'package:travel/saved_data.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<Document> events = [];
  

//   @override
//   void initState() {
//     super.initState();;
//     _loadEvents();
//   }
  
  

//   // Function to load events from Appwrite database
//   Future<void> _loadEvents() async {
//     final fetchedEvents = await getAllEvents(); 
//     setState(() {
//       events = fetchedEvents;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 Image.asset('assets/mountain.jpg',
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height * 0.36,
//                   fit: BoxFit.cover,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 40.0, right: 20.0, left: 20.0),
//                   child: Row(
//                     children: [
//                       Material(
//                         borderRadius: BorderRadius.circular(10),
//                         elevation: 3.0,
//                         child: Container(
//                           padding: EdgeInsets.all(8),
//                           child: Image.asset('assets/earth.png', width: 30,),
//                           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
//                         ),
//                       ),
//                       Spacer(),
//                       Material(
//                         borderRadius: BorderRadius.circular(10),
//                         elevation: 3.0,
//                         child: Container(
//                           padding: EdgeInsets.all(8),
//                           child: Icon(Icons.add, color: Colors.blue, size: 30,),
//                           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
//                         ),
//                       ),
//                       SizedBox(width: 10,),
//                       Material(
//                         borderRadius: BorderRadius.circular(60),
//                         elevation: 3,
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(60),
//                           child: Image.asset('assets/boy.jpeg', height: 50, width: 50, fit: BoxFit.cover,),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 180.0, left: 20.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Travellers",
//                         style: TextStyle(
//                             color: Colors.white, fontSize: 60.0,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       Text("Travel Community App",
//                         style: TextStyle(
//                             color: Color.fromARGB(205, 255, 255, 255),
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(left: 30.0, right: 30, top: MediaQuery.of(context).size.height / 3),
//                   child: Material(
//                     borderRadius: BorderRadius.circular(10),
//                     elevation: 5.0,
//                     child: Container(
//                       padding: EdgeInsets.only(left: 20.0),
//                       decoration: BoxDecoration(
//                         border: Border.all(width: 1.5),
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.white
//                       ),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: "Search Your destination",
//                           suffixIcon: Icon(Icons.search)
//                         ),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(height: 40,),
//             // Event List
//             Expanded(
//               child: ListView.builder(
//                 itemCount: events.length,
//                 itemBuilder: (context, index) {
//                   final event = events[index];
//                   final place = event.data['place'];  // Access data property
//                   final city = event.data['city'];    // Access data property
//                   final caption = event.data['caption']; // Access data property
//                   final image = event.data['image'];   // Access data property

//                   return Container(
//                     margin: EdgeInsets.only(left: 30.0, right: 30),
//                     child: Material(
//                       borderRadius: BorderRadius.circular(20),
//                       elevation: 3.0,
//                       child: Container(
//                         decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(top: 20.0, left: 10.0),
//                               child: Row(
//                                 children: [
//                                   ClipRRect(
//                                     borderRadius: BorderRadius.circular(30),
//                                     child: Image.asset("assets/boy.jpeg", height: 50, width: 50, fit: BoxFit.cover,),
//                                   ),
//                                   SizedBox(width: 15,),
//                                   Text("ak",
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 20.0,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             SizedBox(height: 20,),
//                             Image.network(image),  // Using Image.network for dynamic loading of images
                            
//                             SizedBox(height: 5,),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 10),
//                               child: Row(
//                                 children: [
//                                   Icon(Icons.location_on_sharp, color: Colors.lightBlue,),
//                                   Text("$place, $city",
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 18.0,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             SizedBox(height: 5,),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 10),
//                               child: Text(caption,
//                                 style: TextStyle(
//                                     color: Color.fromARGB(179, 0, 0, 0),
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w500),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 20),
//                               child: Row(
//                                 children: [
//                                   Icon(Icons.favorite_border_outlined, color: Colors.black54, size: 30,),
//                                   SizedBox(width: 5,),
//                                   Text("Like",
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 18.0,
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                   SizedBox(width: 30,),
//                                   Icon(Icons.comment_outlined, color: Colors.black54, size: 28,),
//                                   SizedBox(width: 5,),
//                                   Text("Comment",
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 18.0,
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             SizedBox(height: 30,)
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }








