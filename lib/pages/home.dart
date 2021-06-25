import 'dart:ui';

import 'package:clone_ui_aba_bank_flutter/widget/box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff015D70),
        title: buildTitle(),
        actions: [
          buildIconNoti(),
          SizedBox(
            width: 10,
          ),
          buildprofile(),
        ],
      ),
      backgroundColor: Color(0xff034366),
      drawer: Drawer(),
      body: Container(
        color: Theme.of(context).accentColor,
        child: Column(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    radius: 0.4,
                    colors: [
                      Colors.white,
                      Color(0xff034366),
                    ],
                  ),
                ),
                child: GridView.count(
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  crossAxisCount: 3,
                  children: [
                    BoxCard(icon: Icons.payment, title: "Account"),
                    BoxCard(icon: Icons.loop_rounded, title: "Transfers"),
                    BoxCard(
                        icon: CupertinoIcons.money_dollar_circle,
                        title: "Payments"),
                    BoxCard(icon: Icons.note_alt, title: "Deposite"),
                    BoxCard(icon: Icons.e_mobiledata, title: "Cash to ATM"),
                    BoxCard(
                        icon: CupertinoIcons.creditcard, title: "Virtual Card"),
                    BoxCard(icon: Icons.qr_code, title: "QR Payment"),
                    BoxCard(icon: Icons.ring_volume, title: "Content us"),
                    BoxCard(
                        icon: Icons.location_history, title: "ABA Location"),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Quick Transfer");
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      width: double.infinity,
                      color: Color(0xff06BAD3).withOpacity(.9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Quick Transfer \t",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white.withOpacity(.7)),
                          ),
                          Text(
                            "Create your templates here to make \ntransfer quicker",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: -30,
                    bottom: -30,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 5,
                            color: Colors.white.withOpacity(0.4),
                            style: BorderStyle.solid),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        margin: EdgeInsets.all(1.0),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.arrow_right,
                              color: Color(0xff06BAD3),
                              size: 40,
                            ),
                            Icon(
                              CupertinoIcons.arrow_left,
                              color: Color(0xff06BAD3),
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Flexible(
              flex: 1,
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: (){
                      print("Quick Payment");
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      width: double.infinity,
                      color: Color(0xffEE5351).withOpacity(.9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Quick Payment \t",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white.withOpacity(.7)),
                          ),
                          Text(
                            "Paying your bills with templates is faster",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: -30,
                    bottom: -30,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                          color: Colors.white.withOpacity(.4),
                          style: BorderStyle.solid,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                          margin: EdgeInsets.all(1.0),
                          decoration: BoxDecoration(
                            //  color: Colors.white.withOpacity(0.7),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            CupertinoIcons.money_dollar_circle_fill,
                            color: Colors.white.withOpacity(0.4),
                            size: 110,
                          )),
                    ),
                  ),
                ],
              ),
            ),

            // Flexible(
            //   flex: 1,
            //   child: Container(
            //     color: Color(0xffEE5351).withOpacity(.9),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Row(
      children: [
        Text(
          "ABA",
          style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.w900),
        ),
        Text(
          "'",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.red, fontSize: 30),
        ),
        SizedBox(
          width: 14,
        ),
        Text("Mobile"),
      ],
    );
  }

  Widget buildIconNoti() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GestureDetector(
            onTap: () {
              print("Notification");
            },
            child: Container(
              alignment: Alignment.center,
              child: Icon(
                CupertinoIcons.bell,
                size: 25,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 27,
          right: 2,
          child: Container(
            width: 15,
            height: 15,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                '3',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildprofile() {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 25,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        shape: BoxShape.circle,
        // borderRadius: BorderRadius.all(
        //   Radius.circular(20),
        // ),
        image: DecorationImage(
          image: AssetImage(
            "assets/images/logo.jpg",
          ),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
