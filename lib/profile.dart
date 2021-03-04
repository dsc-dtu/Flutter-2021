import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_dsc/widgets.dart';
import 'package:flutter_app_dsc/home.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height - 2,
        color: Colors.blue,
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height - 140,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(-10, 15),
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width - 20,
                    child: Expanded(
                      flex: 4,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 70,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 5,
                            ),
                            margin: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              border: Border.all(color: Colors.red, width: 2),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Enter Name', labelText: 'Name'),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 5,
                            ),
                            margin: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              border: Border.all(color: Colors.green, width: 2),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Enter Email', labelText: 'Email'),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 5,
                            ),
                            margin: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              border: Border.all(color: Colors.blue, width: 2),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Enter College',
                                  labelText: 'College'),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 30),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 5,
                            ),
                            width: MediaQuery.of(context).size.width - 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Colors.green),
                            child: FlatButton(
                              padding: EdgeInsets.all(0),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              },
                              child: Center(
                                child: Text(
                                  'Submit',
                                  style: GoogleFonts.comfortaa(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: MediaQuery.of(context).size.width * 0.5 - 70,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/dscImages/3.jpg'),
                    radius: 70,
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: dsc(),
            ),
          ],
        ),
      ),
    );
  }
}
