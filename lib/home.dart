import 'package:flutter/material.dart';
import 'package:flutter_app_dsc/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app_dsc/constants.dart';
import 'package:flutter_app_dsc/profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height - height1,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                Container(
                  width: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // SizedBox(height: 50),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: MediaQuery.of(context).size.height - height1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/dscImages/8.jpg')),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 4,
                        color: Colors.grey.shade700,
                        blurRadius: 10,
                      ),
                    ],
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(30)),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          dsc(),
          Container(
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              child: Text(
                'Become a Member',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
