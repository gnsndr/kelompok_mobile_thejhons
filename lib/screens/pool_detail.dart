import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PoolDetailPage extends StatelessWidget {
  final List<String> imageUrls;
  final String title;
  final String description;

  const PoolDetailPage({
    super.key,
    required this.imageUrls,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF405769),
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/logo the jhon.png',
              height: 30,
              width: 30,
            ),
            const SizedBox(width: 10),
            const Text(
              'The Jhons',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Bagian Gambar (dapat digeser)
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6, 
            child: PageView.builder(
              controller: _pageController,
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  imageUrls[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: imageUrls.length,
              effect: const ExpandingDotsEffect(
                dotHeight: 8,
                dotWidth: 8,
                spacing: 4,
                dotColor: Colors.grey,
                activeDotColor: Color(0xFF405769),
              ),
            ),
          ),
          // Informasi Konten
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        title.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF405769),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(color: Colors.blue, thickness: 1),
                    const SizedBox(height: 10),
                    const Text(
                      "Informasi",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF405769),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Pakaian Renang: Pakai baju renang yang diizinkan",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Usia: Dewasa di atas 15 tahun",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Kesehatan: Tidak boleh masuk jika memiliki luka terbuka",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Keamanan: Ikuti arahan dan aturan di area",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
