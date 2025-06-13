import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool newsletter = false;
  bool updates = false;
  bool darkMode = false;
  bool offlineMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Einstellungen')),
      body: Column(
        children: [
          CheckboxListTile(
            title: Text('Newsletter abonnieren'),
            value: newsletter,
            onChanged: (val) => setState(() => newsletter = val!),
          ),
          CheckboxListTile(
            title: Text('Updates erhalten'),
            value: updates,
            onChanged: (val) => setState(() => updates = val!),
          ),
          SwitchListTile(
            title: Text('Dunkler Modus'),
            value: darkMode,
            onChanged: (val) => setState(() => darkMode = val),
          ),
          SwitchListTile(
            title: Text('Offline-Modus'),
            value: offlineMode,
            onChanged: (val) => setState(() => offlineMode = val),
          ),
          Divider(),
          Text('Aktuelle Auswahl:'),
          Text('Newsletter: $newsletter, Updates: $updates'),
          Text('Dark Mode: $darkMode, Offline: $offlineMode'),
        ],
      ),
    );
  }
}
