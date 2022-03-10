// import 'dart:html';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 220,
                      width: 500,
                      color: Colors.black,
                    ),
                    Transform.scale(
                      scale: 1,
                      child: Container(
                          height: 170,
                          width: 500,
                          child: Align(
                              alignment: Alignment.topCenter,
                              child: Image.asset("assets/amigos1.png", width: 200)
                          ),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(400),
                                  bottomRight: Radius.circular(400)
                              ),
                              color: Colors.black,
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.purple,
                                    spreadRadius: 0,
                                    blurRadius: 6),
                              ]
                          )
                      ),
                    ),
                    Positioned.fill(
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                height: 120,
                                width: 120,
                                decoration: const BoxDecoration(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 6,
                                        spreadRadius: 0.1,
                                        color: Colors.purple
                                    )
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage("assets/dp6.jpeg"),
                                    fit: BoxFit.cover,
                                  ),
          
                                  shape: BoxShape.circle,
                                )
                            )
                        )
                    )
                  ]
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(23, 25, 23, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.grey[700],
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name",
                                  style: TextStyle(
                                      color: Colors.grey[700], 
                                      fontSize: 12
                                  ),
                                ),
                                const SizedBox(height: 2),
                                const Text("Malaika Gohar",
                                    style:
                                        TextStyle(
                                          color: Colors.white, 
                                          fontSize: 15
                                        )
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 125,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                )
                            )
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(44.7, 0, 0, 10),
                          child: Text(
                              "This is not your username or pin. This name will be visible to your contacts.",
                              style:
                                  TextStyle(
                                    color: Colors.grey[700], 
                                    fontSize: 12
                                  )
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(44.7, 0, 0, 0),
                          child: const Divider(
                            height: 30,
                            color: Color.fromARGB(75, 158, 158, 158),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: Colors.grey[700],
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "About",
                                  style: TextStyle(
                                      color: Colors.grey[700], 
                                      fontSize: 12
                                  ),
                                ),
                                const SizedBox(height: 2),
                                const Text("❤️فَإِنَّ مَعَ الْعُسْرِ يُسْرًا ",
                                    style:
                                        TextStyle(
                                          color: Colors.white, 
                                          fontSize: 15
                                        )
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 92,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                )
                            )
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(44.7, 0, 0, 0),
                          child: const Divider(
                            height: 30,
                            color: Color.fromARGB(75, 158, 158, 158),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.grey[700],
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Phone",
                                  style: TextStyle(
                                      color: Colors.grey[700], 
                                      fontSize: 12
                                  ),
                                ),
                                const SizedBox(height: 2),
                                const Text("+923353077951",
                                    style:
                                        TextStyle(
                                          color: Colors.white, 
                                          fontSize: 15
                                        )
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
