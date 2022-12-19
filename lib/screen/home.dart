// import 'package:ecommerce/screen/details.dart';
import 'package:ecommerce/datas/list_of_map.dart';
import 'package:ecommerce/screen/details.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeEcommerce extends StatefulWidget {
  const HomeEcommerce({super.key});

  @override
  State<HomeEcommerce> createState() => _HomeEcommerceState();
}

class _HomeEcommerceState extends State<HomeEcommerce> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.black,
          //   title: Text(
          //     'home',
          //     style: GoogleFonts.aBeeZee(
          //         textStyle:
          //             TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
          //   ),
          // ),
          body: Column(children: [
            Container(
              height: 60,
              width: 500,
              decoration: BoxDecoration(
                border: Border.all(width: 0.1, color: Colors.black),
                borderRadius: BorderRadius.circular(1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 100),
                child: Text(
                  "SHOOPERS",
                  style: GoogleFonts.alike(
                      textStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                ),
              ),
            ),
            //
            Expanded(
              child: ListView(
                children: [
                  Wrap(
                    children: List.generate(
                        products.length,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                elevation: 20,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return Details(
                                          name: products[index]['name'],
                                          price: products[index]['price'],
                                          image: products[index]['image'],
                                        );
                                      },
                                    ));
                                  },
                                  child: Container(
                                    height: 150,
                                    // color: Colors.red,
                                    width: 150,
                                    child: Column(children: [
                                      Image(
                                        height: 100,
                                        image: AssetImage(
                                            products[index]['image']),
                                      ),
                                      Text(products[index]['name']),

                                      Text("\$ ${products[index]['price']}")
                                      // Text("\$" + products[index]['price'])
                                    ]),
                                  ),
                                ),
                              ),
                            )),
                  )
                ],
              ),
              //     child: ListView.builder(
              //   scrollDirection: Axis.horizontal,
              //   itemCount: 10,
              //   itemBuilder: (context, index) {
              //     return Wrap(
              //       direction: Axis.vertical,
              //       children: [
              //         Card(
              //           child: Container(
              //             height: 100,
              //             width: 100,
              //             color: Colors.red,
              //           ),
              //         ),
              //       ],
              //     );
              //   },
              // )
            )

            // Container(
            //   height: 500,
            //   width: double.maxFinite,
            //   // color: Colors.red,
            //   child: Wrap(alignment: WrapAlignment.spaceAround, children: [
            //     Padding(
            //       padding: const EdgeInsets.only(top: 30),
            //       child: InkWell(
            //         onTap: () {
            //           Navigator.push(context, MaterialPageRoute(
            //             builder: (context) {
            //               return Details();
            //             },
            //           ));
            //         },
            //         child: Card(
            //           elevation: 20,
            //           child: Container(
            //             height: 142,
            //             width: 160,
            //             decoration: BoxDecoration(
            //                 color: Colors.white,
            //                 borderRadius: BorderRadius.circular(40)),
            //             child: Column(children: [
            //               Image(
            //                 height: 100,
            //                 image: AssetImage('images/shoes.png'),
            //               ),
            //               Text('Adidas Shoe',
            //                   style: GoogleFonts.armata(
            //                       textStyle: TextStyle(
            //                           fontSize: 12,
            //                           fontWeight: FontWeight.bold))),
            //               Text('Rs. 20000.00',
            //                   style: GoogleFonts.armata(
            //                       textStyle: TextStyle(
            //                           fontSize: 12, fontWeight: FontWeight.bold)))
            //             ]),
            //           ),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 30),
            //       child: Card(
            //         elevation: 20,
            //         child: Container(
            //           height: 140,
            //           width: 160,
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.circular(40)),
            //           child: Column(children: [
            //             Image(
            //               height: 100,
            //               image: AssetImage('images/watch.png'),
            //             ),
            //             Text('Smart Watch',
            //                 style: GoogleFonts.armata(
            //                     textStyle: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.bold))),
            //             Text('Rs. 5000.00',
            //                 style: GoogleFonts.armata(
            //                     textStyle: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.bold)))
            //           ]),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 10),
            //       child: Card(
            //         elevation: 20,
            //         child: Container(
            //           height: 140,
            //           width: 160,
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.circular(40)),
            //           child: Column(children: [
            //             Image(
            //               height: 100,
            //               image: AssetImage('images/ladies_shoe.png'),
            //             ),
            //             Text('Adidas Shoe',
            //                 style: GoogleFonts.armata(
            //                     textStyle: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.bold))),
            //             Text('Rs. 20000.00',
            //                 style: GoogleFonts.armata(
            //                     textStyle: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.bold)))
            //           ]),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 10),
            //       child: Card(
            //         elevation: 20,
            //         child: Container(
            //           height: 140,
            //           width: 160,
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.circular(40)),
            //           child: Column(children: [
            //             Image(
            //               height: 100,
            //               image: AssetImage('images/pant.jpg'),
            //             ),
            //             Text('Lives Pant',
            //                 style: GoogleFonts.armata(
            //                     textStyle: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.bold))),
            //             Text('Rs. 1000.00',
            //                 style: GoogleFonts.armata(
            //                     textStyle: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.bold)))
            //           ]),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 10),
            //       child: Card(
            //         elevation: 20,
            //         child: Container(
            //           height: 140,
            //           width: 160,
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.circular(40)),
            //           child: Column(children: [
            //             Image(
            //               height: 100,
            //               image: AssetImage('images/sunglass.webp'),
            //             ),
            //             Text('Sun Glasses',
            //                 style: GoogleFonts.armata(
            //                     textStyle: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.bold))),
            //             Text('Rs. 20000.00',
            //                 style: GoogleFonts.armata(
            //                     textStyle: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.bold)))
            //           ]),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 10),
            //       child: Card(
            //         elevation: 20,
            //         child: Container(
            //           height: 140,
            //           width: 160,
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.circular(40)),
            //           child: Column(children: [
            //             Image(
            //               height: 100,
            //               image: AssetImage('images/kurta.jpg'),
            //             ),
            //             Text('Kurti',
            //                 style: GoogleFonts.armata(
            //                     textStyle: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.bold))),
            //             Text('Rs. 13000.00',
            //                 style: GoogleFonts.armata(
            //                     textStyle: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.bold)))
            //           ]),
            //         ),
            //       ),
            //     ),
            //   ]),
            // )
          ]),
          bottomNavigationBar: BottomNavigationBar(
            // backgroundColor: Color(0xFFFAFF10),
            type: BottomNavigationBarType.fixed,
            // currentIndex: _currentIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.spa_sharp),
                label: 'Splash',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.login),
                label: 'login',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.details),
                label: 'Details',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Card',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.verified_user_sharp),
                  label: 'User',
                  backgroundColor: Colors.red),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.app_registration_rounded),
              //   label: 'regsister',
              // ),
            ],
            onTap: (index) {
              // setState(() {
              //   // _currentIndex = index;
              //   Navigator.push(context, MaterialPageRoute(
              //     builder: (context) {
              //       // return Login();
              //     },
              //   ));
              // });
            },
          )),
    );
  }
}
