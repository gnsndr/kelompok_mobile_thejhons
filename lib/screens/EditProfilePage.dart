import 'package:flutter/material.dart';
import 'package:mobile_thejhons/screens/account_page.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Edit Akun Anda',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Opsi Ganti Foto Profil
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/default_avatar.png'), // Ganti dengan path gambar default Anda
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      // Logika untuk mengganti foto profil
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Ganti Foto Profil"),
                            content: const Text("Fitur ini belum diimplementasikan."),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text(
                      "Ganti Foto Profil",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Form Nama
            TextFormField(
              decoration: const InputDecoration(labelText: 'Nama'),
            ),
            const SizedBox(height: 16),

            // Form Password Lama
            TextFormField(
              decoration: const InputDecoration(labelText: 'Password Lama'),
              obscureText: true,
            ),
            const SizedBox(height: 16),

            // Form Password Baru
            TextFormField(
              decoration: const InputDecoration(labelText: 'Password Baru'),
              obscureText: true,
            ),
            const SizedBox(height: 16),

            // Form Konfirmasi Password
            TextFormField(
              decoration: const InputDecoration(labelText: 'Konfirmasi Password'),
              obscureText: true,
            ),
            const SizedBox(height: 32),

            // Tombol Simpan
            ElevatedButton(
              onPressed: () {
                // Simpan perubahan
                Navigator.pop(context);
              },
              child: const Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}