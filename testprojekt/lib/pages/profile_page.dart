import 'package:flutter/material.dart';

class ProfileFormPage extends StatefulWidget {
  @override
  _ProfileFormPageState createState() => _ProfileFormPageState();
}

class _ProfileFormPageState extends State<ProfileFormPage> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String about = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil bearbeiten')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                onSaved: (value) => name = value ?? '',
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'E-Mail'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) => value != null && value.contains('@') ? null : 'Ungültige E-Mail',
                onSaved: (value) => email = value ?? '',
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Über mich'),
                maxLines: 3,
                onSaved: (value) => about = value ?? '',
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Absenden'),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState?.save();
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: Text('Eingaben'),
                        content: Text('Name: $name\nE-Mail: $email\nÜber mich: $about'),
                        actions: [TextButton(onPressed: () => Navigator.pop(context), child: Text('OK'))],
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
