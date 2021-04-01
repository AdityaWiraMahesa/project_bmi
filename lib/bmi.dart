import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;
  int umur = 0;
  String nama = "";
  String jk = "";
  List<bool> isSelected = [false];
  Color _setColorLaki = Colors.grey[200];
  Color _setColor = Colors.grey[200];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Body Mass Index (BMI)',
          style: TextStyle(
              fontFamily: "Myriad", color: Colors.black, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //Container JK
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/Male.png',
                    width: 120,
                    height: 120,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/Female.png',
                    width: 120,
                    height: 120,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            //Container Input Data
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  //Jenis Kelamin
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        color: _setColorLaki,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80),
                        ),
                        onPressed: () {
                          setState(() {
                            _setColorLaki = Colors.amber;
                            jk = "Laki-Laki";
                          });
                        },
                        child: Text("Laki-Laki"),
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      RaisedButton(
                        color: _setColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80),
                        ),
                        onPressed: () {
                          setState(() {
                            _setColor = Colors.amber;
                            jk = "Perempuan";
                          });
                        },
                        child: Text("Perempuan"),
                      ),
                    ],
                  ),

                  //Nama
                  TextField(
                    onChanged: (txt) {
                      setState(() {
                        nama = txt;
                      });
                    },
                    decoration: new InputDecoration(
                        hintText: "Nama", labelText: "Siapa Nama Anda ?"),
                  ),

                  //Umur
                  TextField(
                    onChanged: (txt) {
                      setState(() {
                        umur = int.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                    decoration: new InputDecoration(
                        hintText: "Umur", labelText: "Berapa Umur Anda ?"),
                  ),
                ],
              ),
            ),

            Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                // color: Colors.blue[700],
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                            suffix: Text('cm'),
                            filled: true,
                            hintText: 'Tinggi'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            berat = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                            suffix: Text('kg'),
                            filled: true,
                            hintText: 'Berat'),
                      ),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMIResult(
                            tinggibadan: tinggi,
                            beratbadan: berat,
                            nama: nama,
                            umur: umur,
                            jk: jk)),
                  );
                },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.greenAccent,
                child: Text(
                  'HITUNG',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[900]),
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.9, color: Colors.red),
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(top: 20, left: 30, right: 20),
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 70,
              child: Column(
                children: [
                  Icon(
                    Icons.info,
                    color: Colors.amber,
                  ),
                  Text(
                    "BMI atau IMT diukur dengan cara membandingkan berat badan dengan tinggi badan",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
