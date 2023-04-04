import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Provide total height and width or our screen
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xffAEC2B6),
              ),
            ),
            Header(size: size),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "Menu",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Card(
                  margin: const EdgeInsets.all(20),
                  child: InkWell(
                    onTap: () {},
                    splashColor: Color(0xffDBE4C6),
                    child: Center(
                      child: Column(
                        children: const <Widget>[
                          Icon(
                            Icons.calculate_sharp,
                            size: 70,
                            color: Color(0xff94AF9F),
                          ),
                          SizedBox(height: 5),
                          Text("Geometric", style: TextStyle(fontSize: 17.0)),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {},
                    splashColor: Color(0xffDBE4C6),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Icon(
                            Icons.calendar_today_rounded,
                            size: 70,
                            color: Color(0xff94AF9F),
                          ),
                          SizedBox(height: 5),
                          Text("Calendar", style: TextStyle(fontSize: 17.0)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "About Us",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(174, 194, 182, 0.4),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Aplikasi ini merupakan aplikasi yang dibuat dengan tujuan memenuhi tugas Ujian Tengah Semester Mata Kuliah Teknologi dan Pemrograman Mobile Tahun Ajar 2022-2023.",
                style: TextStyle(fontSize: 14, fontFamily: 'Poppins',),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      // It will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              bottom: 56.0,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: Color(0xffAEC2B6),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(),
                Text(
                  'Hi Novia!',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Spacer(),
                Image.asset("assets/images/logo_IF.png")
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffAEC2B6).withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Color(0xffAEC2B6).withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.search_sharp),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
