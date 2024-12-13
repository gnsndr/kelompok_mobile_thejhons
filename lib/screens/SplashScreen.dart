import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_thejhons/screens/landing_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LandingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // Ubah background menjadi putih
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Lottie.network(
                'https://lottie.host/75ad859f-f289-479f-bb8a-cf6c5c82cfda/4lyNUVdjqL.json',
                height: 290,
                width: 290,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                      height: 200), // Adjusted to bring the text closer
                  const Text(
                    'The Jhons',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue,
                    ),
                  ),
                  const SizedBox(height: 10), // Added space between the text
                  const Text(
                    'Swimming Pool',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
