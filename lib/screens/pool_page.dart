import 'package:flutter/material.dart';

class PoolPage extends StatelessWidget {
  const PoolPage({super.key});

  // Function to build the card widget
  Widget _buildCard({
    required String imageUrl,
    required String title,
    required String description,
    required String distance,
  }) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image with controlled size
            Container(
              height: 200, // Set image height here
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover, // Scale image to fit
                ),
              ),
            ),
            const SizedBox(height: 12),
            // Title of the card
            Text(
              title,
              style: TextStyle(
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
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue,
                ),
              ),
          ],
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
                imageUrl: 'assets/image 7.png',
                title: 'Waterboom',
                description: 'Arena Wahana Yang Dapat Digunakan Semua Usia',
                distance: '8 Meter',
              ),
              const SizedBox(height: 16),
              _buildCard(
                imageUrl: 'assets/image 7.png',
                title: 'Kolam Anak',
                description: 'Arena Khusus Untuk Anak-anak Usia 5-15 Tahun',
                distance: '8 Meter',
              ),
              const SizedBox(height: 16),
              _buildCard(
                imageUrl: 'assets/image 7.png',
                title: 'Resort Area',
                description: 'Arena Penginapan',
                distance: '',
              ),
              const SizedBox(height: 16),
              _buildCard(
                imageUrl: 'assets/image 7.png',
                title: 'Private Pool',
                description: 'Kolam Renang Eksklusif untuk Pengunjung',
                distance: '5 Meter',
              ),
              const SizedBox(height: 16),
              _buildCard(
                imageUrl: 'assets/image 7.png',
                title: 'Olympic Pool',
                description: 'Kolam Renang Berstandar Internasional',
                distance: '10 Meter',
              ),
              const SizedBox(height: 16),
              _buildCard(
                imageUrl: 'assets/image 7.png',
                title: 'Kids Pool',
                description: 'Kolam Renang Aman untuk Anak-anak',
                distance: '7 Meter',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
