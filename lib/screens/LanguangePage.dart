import 'package:flutter/material.dart';
import 'package:mobile_thejhons/screens/account_page.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bahasa'),
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text('Indonesia'),
            leading: Icon(Icons.language),
          ),
          const ListTile(
            title: Text('English'),
            leading: Icon(Icons.language),
          ),
          const ListTile(
            title: Text('Sunda'),
            leading: Icon(Icons.language),
          ),
          const ListTile(
            title: Text('Bahasa Melayu'),
            leading: Icon(Icons.language),
          ),
          const ListTile(
            title: Text('Tagalog'),
            leading: Icon(Icons.language),
          ),
          const ListTile(
            title: Text('Español'),
            leading: Icon(Icons.language),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
