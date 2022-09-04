import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.2,
          title: Text("About AppName"),
          backgroundColor: Colors.indigo[900],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 110,
                      width: 110,
                      image: AssetImage('assets/logo.png'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                    "About App"),
                SizedBox(
                  height: 20,
                ),
                Text(
                    style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad non molestias distinctio assumenda temporibus quos ratione cupiditate iusto nulla debitis sequi aperiam quod, perferendis magnam beatae, harum culpa excepturi enim illum odit, saepe nihil aspernatur? Vel!"),
                Divider(height: 30),
                Text(
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                    "About Creators"),
                SizedBox(height: 15),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 38,
                      backgroundImage: AssetImage('assets/me.jpg'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                            ),
                            "Pinponsuhu Joseph"),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w300,
                            ),
                            "Software Developer"),
                      ],
                    ),
                  ],
                ),
                Divider(height: 18),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 38,
                      backgroundImage: AssetImage('assets/saheed.jpg'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                            ),
                            "Saheed Abdulrasaq"),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w300,
                            ),
                            "Software Developer"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
