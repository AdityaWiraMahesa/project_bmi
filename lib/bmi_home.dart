import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_bmi/bmi.dart';
import 'package:project_bmi/bmi_about.dart';

class BMIHome extends StatefulWidget {
  @override
  _BMIHomeState createState() => _BMIHomeState();
}

class _BMIHomeState extends State<BMIHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
        children: [
          //Container gambar
          Container(
            color: Colors.lightBlue,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/Bmi.jpg', fit: BoxFit.fitWidth),
              ],
            ),
          ),

          //Container apa?
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              children: [
                Text(
                  "Body Mass Index (BMI)",
                  style: TextStyle(fontSize: 35, fontFamily: "Myriad"),
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 0.9, color: Colors.black))),
                ),
                SizedBox(height: 30),
                Text(
                  "Apa itu Body Mass Index (BMI) ?",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ],
            ),
          ),

          //Container pengertian
          Container(
            padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
            child: Text(
              "Body Mass Index (BMI) atau yang sering dikenal dengan Indeks Massa Tubuh (IMT) adalah nilai ukur untuk mengetahui status gizi seseorang berdasarkan berat dan tinggi badannya. Nilai BMI (IMT) juga dapat menjadi alat skrining awal untuk mengetahui risiko seseorang terhadap suatu penyakit. Nilai BMI (IMT) yang tinggi menandakan bahwa Anda kelebihan berat badan (overweight atau obesitas). Sementara, nilai BMI (IMT) yang rendah artinya Anda kekurangan gizi dan memiliki berat badan rendah.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15.5,
                  fontWeight: FontWeight.w300,
                  height: 1.6,
                  color: Colors.black),
            ),
          ),

          //Button next
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return InputBMI();
              }));
            },
            child: Container(
                width: 240,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  "Let's Check",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                )),
            color: Colors.greenAccent,
          ),

          TextButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BmiAbout();
                }));
              },
              style: TextButton.styleFrom(primary: Colors.black),
              icon: Icon(Icons.help),
              label: Text("Developer")),
          //Icon Botton
        ],
      ),
    );
  }
}
