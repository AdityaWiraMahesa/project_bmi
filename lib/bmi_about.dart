import 'package:flutter/material.dart';

class BmiAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.grey[100],
        centerTitle: true,
        title: Text(
          'Developer Profile',
          style: TextStyle(
              fontFamily: "Myriad", color: Colors.black, fontSize: 25),
        ),
      ),
      body: Column(
        children: <Widget>[
          //Container Foto
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 2), // changes position of shadow
                  )
                ]),
            margin: EdgeInsets.fromLTRB(80, 30, 80, 10),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                    borderRadius: new BorderRadius.circular(100),
                    child: Image.asset("assets/Profile.jpg",
                        width: 200.0, height: 200.0, fit: BoxFit.cover)),
              ],
            ),
          ),

          //Container Garis
          Container(
            width: 300,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 0.9, color: Colors.grey[900]))),
          ),

          //Container Nama, Jurusan, Kampus
          Container(
            decoration: BoxDecoration(
                // boxShadow:
                ),
            margin: EdgeInsets.only(top: 25.0),
            padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
            child: Column(
              children: <Widget>[
                Text(
                  "I MADE ADITYA WIRA MAHESA",
                  style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Myriad',
                      color: Colors.grey[900]),
                ),
                Text(
                  "TEKNIK INFORMATIKA",
                  style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Myriad',
                      color: Colors.grey[900]),
                ),
                Text(
                  "UNIVERSITAS PENDIDIKAN GANESHA",
                  style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Myriad',
                      color: Colors.grey[900]),
                ),
                Text(
                  "SINGARAJA, BALI",
                  style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Myriad',
                      color: Colors.grey[900]),
                ),
              ],
            ),
          ),

          //Container Button
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Social Media"),
                //Button Instagram
                RaisedButton(
                    color: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                    padding: const EdgeInsets.fromLTRB(70, 10, 70, 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80)),
                      padding: EdgeInsets.all(0),
                      width: 110,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("assets/IG.png", width: 25, height: 25),
                          Text(
                            "adithyawm_",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      print('@adithyawm_');
                    }),

                //Button Facebook
                RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                    padding: const EdgeInsets.fromLTRB(70, 10, 70, 10),
                    child: Container(
                      padding: EdgeInsets.all(0),
                      width: 110,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("assets/FB.png", width: 25, height: 25),
                          Text(
                            "Adithya",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
