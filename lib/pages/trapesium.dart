import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uts_tpm_novia/components/custom_button.dart';

class Trapesium extends StatefulWidget {
  const Trapesium({Key? key}) : super(key: key);

  @override
  State<Trapesium> createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  double _luasTrapesium = 0;
  double _kelilingTrapesium = 0;

  final sisiAtas = TextEditingController();
  final sisiBawah = TextEditingController();
  final sisiKiri = TextEditingController();
  final sisiKanan = TextEditingController();
  final tinggi = TextEditingController();

  void _hitungLuas(sisiAtas, sisiBawah, tinggi) {
    setState(() {
      double _sisiAtas = double.parse(sisiAtas.text);
      double _sisiBawah = double.parse(sisiBawah.text);
      double _tinggi = double.parse(tinggi.text);

      _luasTrapesium = (_sisiAtas + _sisiBawah) * _tinggi / 2.0;
    });
  }

  void _hitungKeliling(sisiAtas, sisiBawah, sisiKanan, sisiKiri, tinggi) {
    setState(() {
      double _sisiAtas = double.parse(sisiAtas.text);
      double _sisiBawah = double.parse(sisiBawah.text);
      double _sisiKiri = double.parse(sisiKiri.text);
      double _sisiKanan = double.parse(sisiKanan.text);

      _kelilingTrapesium = _sisiAtas + _sisiBawah + _sisiKanan + _sisiKiri;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffAEC2B6),
        title: Text('Trapesium'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 10, left: 10),
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/trapesium.jpg"),
            ),
            SizedBox(
              height: 10,
            ),
            _sisiAtasField(),
            SizedBox(
              height: 10,
            ),
            _sisiBawahField(),
            SizedBox(
              height: 10,
            ),
            _sisiKananField(),
            SizedBox(
              height: 10,
            ),
            _sisiKiriField(),
            SizedBox(
              height: 10,
            ),
            _tinggiField(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  onTap: () {
                    _hitungLuas(sisiAtas, sisiBawah, tinggi);
                    _hitungKeliling(
                        sisiAtas, sisiBawah, sisiKanan, sisiKiri, tinggi);
                  },
                  buttonText: "Hitung",
                  sizeHeight: 45,
                  sizeWidth: 100,
                  borderRadius: 20,
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Keliling Trapesium",
                        style: TextStyle(fontSize: 18, fontFamily: "Poppins"),
                      ),
                      Text(
                        "Luas Trapesium",
                        style: TextStyle(fontSize: 18, fontFamily: "Poppins"),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ": " + '$_kelilingTrapesium',
                        style: TextStyle(fontSize: 18, fontFamily: "Poppins", fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ": " + '$_luasTrapesium',
                        style: TextStyle(fontSize: 18, fontFamily: "Poppins", fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _sisiAtasField() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 10.0, right: 10),
      child: TextFormField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff94AF9F)),
            ),
            labelText: "Sisi Atas",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff94AF9F)))),
        keyboardType: TextInputType.number,
        controller: sisiAtas,
      ),
    );
  }

  Widget _sisiBawahField() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 10.0, right: 10),
      child: TextFormField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff94AF9F)),
            ),
            labelText: "Sisi Bawah",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff94AF9F)))),
        keyboardType: TextInputType.number,
        controller: sisiBawah,
      ),
    );
  }

  Widget _sisiKananField() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 10.0, right: 10),
      child: TextFormField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff94AF9F)),
            ),
            labelText: "Sisi Kanan",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff94AF9F)))),
        keyboardType: TextInputType.number,
        controller: sisiKanan,
      ),
    );
  }

  Widget _sisiKiriField() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 10.0, right: 10),
      child: TextFormField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff94AF9F)),
            ),
            labelText: "Sisi Kiri",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff94AF9F)))),
        keyboardType: TextInputType.number,
        controller: sisiKiri,
      ),
    );
  }

  Widget _tinggiField() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 10.0, right: 10),
      child: TextFormField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff94AF9F)),
            ),
            labelText: "Tinggi",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff94AF9F)))),
        keyboardType: TextInputType.number,
        controller: tinggi,
      ),
    );
  }
}
