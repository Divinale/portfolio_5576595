import 'package:flutter/material.dart';
import 'pages/slider_page.dart';
import 'pages/profile_page.dart';
import 'pages/settings_page.dart';
import 'pages/summary_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final Map<String, dynamic> profileData = {};
  final Map<String, bool> settingsData = {};
  double sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Startseite')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Slider-Seite'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(
                  builder: (_) => SliderPage())),
            ),
            ElevatedButton(
              child: Text('Profilseite'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(
                  builder: (_) => ProfileFormPage())),
            ),
            ElevatedButton(
              child: Text('Einstellungen'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(
                  builder: (_) => SettingsPage())),
            ),
            ElevatedButton(
              child: Text('Zusammenfassung'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(
                  builder: (_) => SummaryPage())),
            ),
          ],
        ),
      ),
    );
  }
}
