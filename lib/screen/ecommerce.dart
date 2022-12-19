import 'package:ecommerce/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EcommerceSite extends StatefulWidget {
  const EcommerceSite({super.key});

  @override
  State<EcommerceSite> createState() => _EcommerceSiteState();
}

class _EcommerceSiteState extends State<EcommerceSite> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Splash',
              style: GoogleFonts.aBeeZee(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
        ),
        body: Container(
          height: 700,
          width: double.maxFinite,
          color: Color(0xFFFAFF10),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'WELCOME',
                style: GoogleFonts.acme(textStyle: TextStyle(fontSize: 35)),
              ),
            ),
            Text('TO',
                style: GoogleFonts.acme(textStyle: TextStyle(fontSize: 35))),
            Text('SHOPPERS',
                style: GoogleFonts.acme(textStyle: TextStyle(fontSize: 35))),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 40),
              child:
                  Image(height: 399, image: AssetImage('images/shopping.png')),
            )
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFFAFF10),
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
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
            setState(() {
              _currentIndex = index;
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Login();
                },
              ));
            });
          },
        ));
  }
}
