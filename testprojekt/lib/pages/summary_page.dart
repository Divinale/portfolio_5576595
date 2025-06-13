import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final String name;
  final String email;
  final String about;
  final double sliderValue;
  final Map<String, bool> settings;

  SummaryPage({
    this.name = 'Max Muster',
    this.email = 'max@example.com',
    this.about = 'Flutter Entwickler',
    this.sliderValue = 50,
    this.settings = const {
      'Newsletter': true,
      'Updates': false,
      'DarkMode': true,
      'Offline': false,
    },
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Zusammenfassung')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Text('👤 Profil', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Name: $name'),
            Text('E-Mail: $email'),
            Text('Über mich: $about'),
            Divider(),
            Text('🎚️ Slider-Wert: ${sliderValue.toStringAsFixed(0)}'),
            Divider(),
            Text('⚙️ Einstellungen', style: TextStyle(fontWeight: FontWeight.bold)),
            ...settings.entries.map((e) => Text('${e.key}: ${e.value ? "Ja" : "Nein"}')),
          ],
        ),
      ),
    );
  }
}
