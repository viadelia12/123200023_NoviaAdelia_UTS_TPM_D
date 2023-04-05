import 'package:flutter/material.dart';
import 'package:uts_tpm_novia/components/custom_button.dart';

class Tabung extends StatefulWidget {
  const Tabung({Key? key}) : super(key: key);

  @override
  State<Tabung> createState() => _TabungState();
}

class _TabungState extends State<Tabung> {
  double _luasPermukaanTabung = 0;
  double _volumeTabung = 0;

  final jariJari = TextEditingController();
  final tinggi = TextEditingController();

  void _hitungLuasPermukaan(jariJari, tinggi) {
    setState(() {
      double _jariJari = double.parse(jariJari.text);
      double _tinggi = double.parse(tinggi.text);

      _luasPermukaanTabung = 2.0 * 22/7 * _jariJari * (_jariJari + _tinggi);
    });
  }

  void _hitungVolume(jariJari, tinggi) {
    setState(() {
      double _jariJari = double.parse(jariJari.text);
      double _tinggi = double.parse(tinggi.text);

      _volumeTabung = 22/7 * _jariJari * _jariJari * _tinggi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffAEC2B6),
        title: Text('Tabung'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 10, left: 10),
              height: MediaQuery.of(context).size.height/3,
              child: Image.asset("assets/images/tabung.png"),
            ),
            SizedBox(
              height: 10,
            ),
            _jariJariField(),
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
                    _hitungLuasPermukaan(jariJari, tinggi);
                    _hitungVolume(jariJari, tinggi);
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
                        "Luas Permukaan Tabung",
                        style: TextStyle(fontSize: 18, fontFamily: "Poppins"),
                      ),
                      Text(
                        "Volume Tabung",
                        style: TextStyle(fontSize: 18, fontFamily: "Poppins"),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ": " + '$_luasPermukaanTabung',
                        style: TextStyle(fontSize: 18, fontFamily: "Poppins", fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ": " + '$_volumeTabung',
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

  Widget _jariJariField() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 10.0, right: 10),
      child: TextFormField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff94AF9F)),
              ),
              labelText: "Jari - Jari",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff94AF9F)))),
          keyboardType: TextInputType.number,
          controller: jariJari),
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
