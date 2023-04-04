import 'package:flutter/material.dart';
import 'package:uts_tpm_novia/components/navigation_bar.dart';
import 'package:uts_tpm_novia/pages/calendar_page.dart';
import 'package:uts_tpm_novia/pages/geometric_page.dart';
import 'package:uts_tpm_novia/pages/home_page.dart';
import 'package:uts_tpm_novia/pages/login_page.dart';
import 'package:uts_tpm_novia/pages/profile_page.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/navbar':
        return MaterialPageRoute(builder: (_) => MainPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/geometric':
        return MaterialPageRoute(builder: (_) => GeometricPage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case '/calendar':
        return MaterialPageRoute(builder: (_) => CalendarPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}