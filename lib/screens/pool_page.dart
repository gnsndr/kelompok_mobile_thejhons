import 'package:flutter/material.dart';
import 'package:mobile_thejhons/screens/pool_detail.dart';

class PoolPage extends StatelessWidget {
  const PoolPage({super.key});

  // Function to build the card widget
  Widget _buildCard({
    required BuildContext context,
    required List<String> imageUrls, // Ganti dari String menjadi List<String>
    required String title,
    required String description,
    required String distance,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PoolDetailPage(
              imageUrls: imageUrls, // Kirim sebagai list
              title: title,
              description: description,
            ),
          ),
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image with controlled size
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(imageUrls.first), // Ambil gambar pertama
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              // Title of the card
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 6),
              // Description of the card
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 8),
              // Distance or additional info
              if (distance.isNotEmpty)
                Text(
                  'Distance: $distance',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildCard(
                context: context,
                imageUrls: [
                  'assets/holiday.jpeg',
                  'assets/holiday.jpeg',
                  'assets/holiday.jpeg',
                ], // Kirim sebagai list
                title: 'Waterboom',
                description: 'Arena Wahana Yang Dapat Digunakan Semua Usia',
                distance: '1 Meter',
              ),
              const SizedBox(height: 16),
              _buildCard(
                context: context,
                imageUrls: [
                  'assets/kolam anak1.png',
                  'assets/kolam anak1.png',
                  'assets/kolam anak1.png',
                ],
                title: 'Kolam Anak',
                description: 'Arena Khusus Untuk Anak-anak Usia 5-15 Tahun',
                distance: '1 Meter',
              ),
              const SizedBox(height: 16),
              _buildCard(
                context: context,
                imageUrls: [
                  'assets/kolam dewasa.png',
                  'assets/kolam dewasa.png',
                  'assets/kolam dewasa4.jpeg',
                ],
                title: 'Kolam Dewasa',
                description:
                    'Arena Wahana Yang Dapat Digunakan Untuk usia 15 tahun ke atas',
                distance: '5 meter',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
