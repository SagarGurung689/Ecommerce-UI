// import 'package:ecommerce/datas/list_of_map.dart';
import 'package:ecommerce/screen/delete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:ecommerce/datas/list_of_map.dart';

class Details extends StatefulWidget {
  final String? name;
  final String? price;
  final String? image;
  const Details({super.key, this.name, this.image, this.price});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Details',
              style: GoogleFonts.aBeeZee(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
        ),
        body: Column(children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: 260,
                  width: double.maxFinite,
                  // color: Colors.red,
                  child: Image(image: AssetImage("${widget.image!}")),
                ),
              ),
              Positioned(
                  top: 40,
                  left: 29,
                  child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.yellow,
                      child: SvgPicture.asset('icons/back_arrow.svg'))),
              Positioned(
                  top: 40,
                  left: 280,
                  child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.yellow,
                      child: SvgPicture.asset('icons/share.svg')))
            ],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 200, bottom: 1),
                      child: Text(widget.name!,
                          style: GoogleFonts.balooTammudu2(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20))),
                    ),
                    Positioned(
                        top: 20,
                        left: 1,
                        child: Text(widget.price!,
                            style: GoogleFonts.balooTammudu2(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20))))
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Delete();
                    },
                  ));
                },
                child: Text(
                  "Add to Cart",
                  style: GoogleFonts.belgrano(
                      textStyle: TextStyle(fontWeight: FontWeight.bold)),
                ),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 230, top: 20),
            child: Text(
              'More Details',
              style: GoogleFonts.arvo(
                  textStyle: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              children: [
                Container(
                  width: 700,
                  height: 100,
                  // color: Colors.pink,
                  child: SingleChildScrollView(
                    child: Text(
                        'lorem34Occaecat reprehenderit nisi anim adipisicing fugiat non irure fugiat exercitation eiusmod cillum.Dolore ullamco occaecat ut cupidatat commodo commodo elit anim. Minim amet aliqua nostrud fugiat dolore non in quis officia ut aliqua ad elit adipisicing. Mollit duis aliquip elit quis do aliqua exercitation cupidatat consectetur elit proident enim. Fugiat excepteur excepteur sit irure deserunt eu laborum ea ex. Veniam proident consectetur elit eiusmod adipisicing duis.'),
                  ),
                )
              ],
            ),
          )
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
        ));
  }
}
