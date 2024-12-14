import 'package:flutter/material.dart';
import 'package:mobile_thejhons/screens/EditProfilePage.dart';
import 'package:mobile_thejhons/screens/LanguangePage';
import 'package:mobile_thejhons/screens/login_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Header Image
          Container(
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/header_image.png'), 
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Profile Section
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.blue[100],
            child: Icon(
              Icons.person,
              size: 60,
              color: Colors.blue[700],
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Kelompok4',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const Text(
            'kelompok4@gmail.com',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 24),
          // Menu Options
          Expanded(
            child: ListView(
              children: [
                _buildMenuItem(Icons.edit, 'Edit Profil', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditProfilePage()),
                  );
                }),
                _buildMenuItem(Icons.language, 'Bahasa', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LanguagePage()),
                  );
                }),
                _buildMenuItem(Icons.logout, 'Keluar', () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.blue,
            ),
            const SizedBox(width: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
