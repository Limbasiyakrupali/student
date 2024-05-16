import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/global.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool istapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("detailpage");
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("WELCOME TO THE",
                    style: GoogleFonts.getFont("Mulish",
                        textStyle: const TextStyle(fontSize: 18))),
              ],
            ),
          ),
          Column(
            children: [
              Column(
                children: [
                  Text("Our Edupluse App",
                      style: GoogleFonts.getFont("Satisfy",
                          textStyle: const TextStyle(fontSize: 38))),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 280,
                width: 280,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://st2.depositphotos.com/1378583/5228/v/450/depositphotos_52283153-stock-illustration-hand-book-logo.jpg"))),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.grey,
                      ),
                      Text("No data found",
                          style: GoogleFonts.getFont("Mulish",
                              textStyle: const TextStyle(
                                  fontSize: 18, color: Colors.grey)))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("studentdetail");
                },
                child: Global.allstudent != []
                    ? Container()
                    : Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 150,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            spreadRadius: 5,
                                            blurRadius: 10,
                                            color: Colors.grey.shade200,
                                            offset: const Offset(0, 5))
                                      ]),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("View all Student deatils",
                                          style: GoogleFonts.getFont("Mulish",
                                              textStyle: const TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black))),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
