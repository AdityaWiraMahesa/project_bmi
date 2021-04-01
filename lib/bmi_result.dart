import 'package:flutter/material.dart';
import 'dart:math';
import 'bmi_home.dart';
import 'bmi_about.dart';

class BMIResult extends StatelessWidget {
  BMIResult(
      {@required this.tinggibadan,
      @required this.beratbadan,
      @required this.nama,
      @required this.umur,
      @required this.jk});
  final int tinggibadan;
  final int beratbadan;
  final String nama;
  final int umur;
  final String jk;

  @override
  Widget build(BuildContext context) {
    double bmi = beratbadan / pow(tinggibadan / 100, 2);
    String cBMI;
    if (bmi >= 28) {
      cBMI = "Obese";
    } else if (bmi >= 23)
      cBMI = "Overweight";
    else if (bmi >= 17.5) {
      cBMI = "Normal";
    } else
      cBMI = "Underweight";

    return Scaffold(
      backgroundColor: Colors.grey[50],
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
          'RESULT',
          style: TextStyle(
              fontFamily: "Myriad", color: Colors.black, fontSize: 25),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text(
              nama,
              style: TextStyle(
                  fontSize: 35, fontFamily: "Myriad", color: Colors.grey[900]),
            ),
            Text(
              jk,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[900],
                  fontWeight: FontWeight.w300),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  umur.toStringAsFixed(0),
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey[900],
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  " Tahun",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey[900],
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[400],
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(cBMI,
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          color: Colors.green)),
                  Text(
                    bmi.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey[900],
                    ),
                  ),
                  Text(
                    'Normal BMI Range',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey[900],
                    ),
                  ),
                  Text(
                    '17,5 -  22.9 ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey[900],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                        icon: Icon(Icons.home),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BMIHome();
                          }));
                        }),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Develop with ",
                  style: TextStyle(fontSize: 15),
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BmiAbout();
                    }));
                  },
                  child: Text("By Aditya Wira Mahesa"),
                  style: TextButton.styleFrom(primary: Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
