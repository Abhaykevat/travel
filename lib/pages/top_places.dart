import 'package:flutter/material.dart';


class TopPlaces extends StatefulWidget {
  const TopPlaces({super.key});

  @override
  State<TopPlaces> createState() => _TopPlacesState();
}

class _TopPlacesState extends State<TopPlaces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(30),
                    elevation: 3.0,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                        child: Icon(Icons.arrow_back,color: Colors.white,)),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/5,),
                  Text('Top Places',style: TextStyle(color: Colors.blue,fontSize: 28.0,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(height: 30,),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                elevation: 3.0,
                child: Container(
                  padding: EdgeInsets.only(left: 20.0,right: 20,top: 30),
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
                              borderRadius:BorderRadius.circular(20),
                              elevation:3.0,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius:BorderRadius.circular(20),
                                      child: Image.asset('assets/p.jpg',height: 300,width: 190,fit: BoxFit.cover,)),
                                  Container(
                                    margin: EdgeInsets.only(top: 260),
                                    // height: 300,
                                    width: 190,
                                    decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))),
                                    child: Center(child: Text("Prem Mandir",style: TextStyle(color: Colors.white,fontSize: 28),)),
                                  )
                                ],
                              ),
                            ),
                            Material(
                              borderRadius:BorderRadius.circular(20),
                              elevation:3.0,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                      borderRadius:BorderRadius.circular(20),
                                      child: Image.asset('assets/iskon.jpeg',height: 300,width: 190,fit: BoxFit.cover,)),
                                  Container(
                                    margin: EdgeInsets.only(top: 260),
                                    // height: 300,
                                    width: 190,
                                    decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))),
                                    child: Center(child: Text("Prem Mandir",style: TextStyle(color: Colors.white,fontSize: 28),)),
                                  )
                                ],
                              ),
                            ),
                    
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
                              borderRadius:BorderRadius.circular(20),
                              elevation:3.0,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                      borderRadius:BorderRadius.circular(20),
                                      child: Image.asset('assets/rangi.jpg',height: 300,width: 190,fit: BoxFit.cover,)),
                                  Container(
                                    margin: EdgeInsets.only(top: 260),
                                    // height: 300,
                                    width: 190,
                                    decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))),
                                    child: Center(child: Text("Prem Mandir",style: TextStyle(color: Colors.white,fontSize: 28),)),
                                  )
                                ],
                              ),
                            ),
                            Material(
                              borderRadius:BorderRadius.circular(20),
                              elevation:3.0,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                      borderRadius:BorderRadius.circular(20),
                                      child: Image.asset('assets/vaishno.png',height: 300,width: 190,fit: BoxFit.cover,)),
                                  Container(
                                    margin: EdgeInsets.only(top: 260),
                                    // height: 300,
                                    width: 190,
                                    decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))),
                                    child: Center(child: Text("Prem Mandir",style: TextStyle(color: Colors.white,fontSize: 28),)),
                                  )
                                ],
                              ),
                            ),
                    
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
                              borderRadius:BorderRadius.circular(20),
                              elevation:3.0,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                      borderRadius:BorderRadius.circular(20),
                                      child: Image.asset('assets/barsana.jpg',height: 300,width: 190,fit: BoxFit.cover,)),
                                  Container(
                                    margin: EdgeInsets.only(top: 260),
                                    // height: 300,
                                    width: 190,
                                    decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))),
                                    child: Center(child: Text("Prem Mandir",style: TextStyle(color: Colors.white,fontSize: 28),)),
                                  )
                                ],
                              ),
                            ),
                            Material(
                              borderRadius:BorderRadius.circular(20),
                              elevation:3.0,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                      borderRadius:BorderRadius.circular(20),
                                      child: Image.asset('assets/vaishno.png',height: 300,width: 190,fit: BoxFit.cover,)),
                                  Container(
                                    margin: EdgeInsets.only(top: 260),
                                    // height: 300,
                                    width: 190,
                                    decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))),
                                    child: Center(child: Text("Prem Mandir",style: TextStyle(color: Colors.white,fontSize: 28),)),
                                  )
                                ],
                              ),
                            ),

                          ],
                        ),
                    
                      ],
                    ),
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
