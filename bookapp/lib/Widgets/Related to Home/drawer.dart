// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
var name = "Loading...";
var contactNumber = "Loading...";
Uint8List? img64;
class SideDrawer extends StatefulWidget {
  const SideDrawer({
    Key? key,
  }) : super(key: key);
  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
    bool responecame = false;
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      child: Drawer(
        child: SizedBox(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            DrawerHeader(
                child: ListTile(
              leading: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.grey,
              ),
              title: Text(
                'Muhammad Rehan',
                style: TextStyle(
                    fontFamily: "Montserrat-Regular",
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '0312 1234 567',
                style: TextStyle(
                  fontFamily: "Montserrat-Regular",
                  fontSize: 15,
                  // color: Colors.black,
                  // fontWeight: FontWeight.bold
                  // ,
                ),
              ),
            )),
            drawerFields(context, "Home", () {
              
            }),
            drawerFields(context, "History", () {
              // print("HELLO");
            }),
            drawerFields(context, "My Book", () {
              // print("HELLO");
            }),
            drawerFields(context, "Coin", () {
              // print("HELLO");
            }),
            drawerFields(context, "FAQs", () {
              // print("HELLO");
            }),
            drawerFields(context, "Rate us", () {
              // print("HELLO");
            }),
            drawerFields(context, "Refer a friend", () {
              // print("HELLO");
            }),
            drawerFields(context, "Terms & Condition", () {
              // print("HELLO");
            }),
            drawerFields(context, "Logout", () {
              // print("HELLO");
            })
          ]),
        ),
      ),
    );
  }
}

Widget drawerFields(context, String text, Function onTap) {
  return Padding(
    padding: EdgeInsets.fromLTRB(
        MediaQuery.of(context).size.width * 0.30, 15, 5, 17),
    child: InkWell(
      onTap: () {
        onTap();
      },
      child: Text(
        text,
        style: TextStyle(
            fontFamily: "Montserrat-Regular",
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}