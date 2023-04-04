import 'package:flutter/material.dart';
import 'package:uts_tpm_novia/components/custom_button.dart';
import 'package:uts_tpm_novia/pages/detail_profile_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffAEC2B6),
          title: const Text(
            "Profile",
            style: TextStyle(fontFamily: "Poppins"),
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.logout_outlined),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      content: const Text('Are you sure want to log out?'),
                      actions: <TextButton>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('No'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/login', (Route<dynamic> route) => false);
                          },
                          child: const Text('Yes'),
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/Me.jpg')),
              SizedBox(
                height: 20,
              ),
              Text(
                "Novia Adelia - 123200023",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailProfile()));
                },
                buttonText: "See Detail",
                sizeHeight: 45,
                sizeWidth: 130,
                borderRadius: 30,
              )
            ],
          ),
        ));
  }
}
