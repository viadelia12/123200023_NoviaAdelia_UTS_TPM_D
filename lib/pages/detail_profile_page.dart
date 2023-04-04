import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailProfile extends StatefulWidget {
  const DetailProfile({Key? key}) : super(key: key);

  @override
  State<DetailProfile> createState() => _DetailProfileState();
}

class _DetailProfileState extends State<DetailProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffAEC2B6),
          title: const Text('Detail Profile'),
        ),
        body: ListView(
          children: [
            Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('assets/images/Me.jpg')),
                ])),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 13.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.account_circle_outlined,
                        size: 40.0,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(width: 24.0),
                    Text(
                      "Nama : Novia Adelia",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 13.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.contacts_outlined,
                        size: 40.0,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(width: 24.0),
                    Text(
                      "NIM     : 123200023",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 13.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.groups_outlined,
                        size: 40.0,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(width: 24.0),
                    Flexible(
                      child: Text(
                        "Kelas : Teknologi & Pemrograman Mobile IF-D",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 13.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.cake,
                        size: 40.0,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(width: 24.0),
                    Text(
                      "TTL   : Medan, 12 November 2002",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 13.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.note_sharp,
                        size: 40.0,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(width: 24.0),
                    Text(
                      "Harapan : Berguna bagi semua orang",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
