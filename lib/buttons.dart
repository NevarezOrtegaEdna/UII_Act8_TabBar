//import 'package:ejemplo_drawer_menu/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:nevarez/drawer_menu.dart';

class Butttons extends StatelessWidget {
  static const String routeName = '/butttons';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons Magic"),
        backgroundColor: Color(0xffaa7fd9),
      ),
      drawer: DrawerMenu(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  print("Elevated Icon Button");
                },
                child: Text("Elevated Button"),
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xffaa7fd9)),
                  overlayColor:
                      MaterialStateProperty.all<Color>(Color(0xff3a2157)),
                  textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    //color: Colors.black,
                  )),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: OutlinedButton(
                  onPressed: () {
                    print("Outlined Icon Button");
                  },
                  child: Text("Outlinde Button"),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffaa7fd9)),
                      //backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic);
                        }
                        return TextStyle();
                      }))),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextButton(
                onPressed: () {
                  print("Text Button");
                },
                child: Text("Text Button"),
                style: TextButton.styleFrom(
                    primary: Colors.black,
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ],
        ),
      ), // ThiThis trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
