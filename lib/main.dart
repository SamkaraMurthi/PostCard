import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Simple Post Card")),
          backgroundColor: Color(0xFFb8c1ec)),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [Color(0xFFb8c1ec), Color(0xFFeebbc3)])),
          ),
          Center(
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 20,
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          image: DecorationImage(
                              image: AssetImage('images/bali.jpg'),
                              fit: BoxFit.cover)),
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(
                          20,
                          MediaQuery.of(context).size.height * 0.3 + 30,
                          20,
                          20),
                      child: Center(
                        child: Column(
                          children: [
                            Text("Welcome To Bali, The Island of Heaven",
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFf272343),
                                  fontSize: 20,
                                )),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Sent by ,"),
                                  Text(
                                    "IchiPravda",
                                    style: TextStyle(color: Colors.amberAccent),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Spacer(
                                  flex: 10,
                                ),
                                //icon
                                Icon(Icons.thumb_up,
                                    size: 18, color: Colors.grey),
                                Spacer(
                                  flex: 1,
                                ),
                                Text("99",
                                    style: TextStyle(color: Colors.grey)),
                                Spacer(
                                  flex: 5,
                                ),
                                //icon
                                Icon(Icons.comment,
                                    size: 18, color: Colors.grey),
                                Spacer(
                                  flex: 1,
                                ),
                                //komen
                                Text("99",
                                    style: TextStyle(color: Colors.grey)),
                                Spacer(
                                  flex: 10,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
                )),
          ),
        ],
      ),
    );
  }
}
