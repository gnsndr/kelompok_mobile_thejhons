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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
        backgroundColor: const Color(0xFF405769),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              // Gambar yang dapat di-slide dengan indikator titik di bagian bawah
              SizedBox(
                height:
                    MediaQuery.of(context).size.height * 0.6, // Tinggi slide
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
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
            left: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      title.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(color: Colors.blue, thickness: 1),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  const Divider(color: Colors.blue, thickness: 1),
                  const SizedBox(height: 10),
                  const Text(
                    "Pakaian Renang: Pakai baju renang yang diizinkan",
                    style: TextStyle(fontSize: 14),
                  ),
                  const Text(
                    "Usia: Dewasa diatas 15 tahun",
                    style: TextStyle(fontSize: 14),
                  ),
                  const Text(
                    "Kesehatan: Tidak boleh masuk jika memiliki luka terbuka",
                    style: TextStyle(fontSize: 14),
                  ),
                  const Text(
                    "Keamanan: Ikuti arahan lifeguard dan aturan di area",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.48,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: imageUrls.length,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.blue,
                  dotColor: Colors.white,
                  dotHeight: 8.0,
                  dotWidth: 8.0,
                  expansionFactor: 2,
                  spacing: 4.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
