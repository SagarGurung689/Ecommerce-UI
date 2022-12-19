import 'package:ecommerce/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('login',
            style: GoogleFonts.aBeeZee(textStyle: TextStyle(fontSize: 25))),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 600,
          width: double.maxFinite,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: Text(
                  'Welcome Back !',
                  style: GoogleFonts.aleo(
                      textStyle:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              ),
              Text(
                'Login with Username & password',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 20),
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: Colors.yellow,
              //         boxShadow: [
              //           BoxShadow(
              //             color:
              //                 Color.fromARGB(255, 211, 208, 208).withOpacity(0.5),
              //             spreadRadius: 5,
              //             blurRadius: 7,
              //             offset: Offset(0, 3), // changes position of shadow
              //           ),
              //         ],
              //         border: Border.all(width: 0.1, color: Colors.black),
              //         borderRadius: BorderRadius.circular(10)),
              //     height: 250,
              //     width: 300,
              //     child: Column(children: [

              //     ]),
              //   ),
              // )

              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: PhysicalModel(
                  color: Colors.white,
                  elevation: 15,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 300,
                    height: 250,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 140, top: 8),
                        child: Text(
                          'Username',
                          style: GoogleFonts.amiri(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                        width: 230,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                              20,
                            )),
                            hintText: 'Enter Username',
                          ),
                        ),
                      )
                      // Padding(
                      //   padding: const EdgeInsets.only(bottom: 1),
                      //   child: Container(
                      //     height: 40,
                      //     width: 230,
                      //     decoration: BoxDecoration(
                      //         // color: Colors.green,
                      //         border: Border.all(width: 0.5, color: Colors.black),
                      //         borderRadius: BorderRadius.circular(30)),
                      //   ),
                      // ),

                      //                                                                               password

                      ,
                      Padding(
                        padding: const EdgeInsets.only(right: 140, bottom: 1),
                        child: Text('Password',
                            style: GoogleFonts.amiri(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18))),
                      ),
                      SizedBox(
                        height: 45,
                        width: 230,
                        child: TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        SvgPicture.asset(
                                          'icons/close_eye.svg',
                                          height: 15,
                                          width: 20,
                                        );
                                      });
                                    },
                                    child: Icon(Icons.remove_red_eye))),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                              20,
                            )),
                            hintText: 'Enter Password',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Container(
                          height: 45,
                          width: 230,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              border:
                                  Border.all(width: 0.5, color: Colors.black),
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                              child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return HomeEcommerce();
                                },
                              ));
                            },
                            child: Text('SIGN IN',
                                style: GoogleFonts.autourOne(
                                    textStyle: TextStyle(
                                        color: Color.fromARGB(255, 255, 33, 17),
                                        fontWeight: FontWeight.bold))),
                          )),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 70, top: 40),
                      child: Text('Create a New account? '),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0, top: 40),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
