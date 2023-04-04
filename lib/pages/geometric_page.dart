import 'package:flutter/material.dart';
import 'package:uts_tpm_novia/pages/tabung.dart';
import 'package:uts_tpm_novia/pages/trapesium.dart';

class GeometricPage extends StatefulWidget {
  const GeometricPage({Key? key}) : super(key: key);

  @override
  State<GeometricPage> createState() => _GeometricPageState();
}

class _GeometricPageState extends State<GeometricPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffAEC2B6),
          title: Text('Geometric'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/splash.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 230),
                  decoration: BoxDecoration(
                      color: Color(0xffAEC2B6),
                      borderRadius: BorderRadius.circular(35)),
                  height: 60,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      child: Center(
                        child: Text(
                          "Luas dan Keliling",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 310),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Trapesium()));
                    },
                    splashColor: Color(0xffDBE4C6),
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            height: 100.0,
                            child: Image.asset("assets/images/trapesium.jpg"),
                          ),
                          Text("Trapesium",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 430),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Tabung()));
                    },
                    splashColor: Color(0xffDBE4C6),
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 3,
                            height: 100.0,
                            child: Image.asset("assets/images/tabung.png"),
                          ),
                          Text("Tabung",
                              style: TextStyle(
                                fontSize: 17.0,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
