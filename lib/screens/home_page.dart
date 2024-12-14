import 'package:flutter/material.dart';
import 'package:mobile_thejhons/screens/account_page.dart';
import 'package:mobile_thejhons/screens/food_page.dart';
import 'package:mobile_thejhons/screens/pool_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Daftar halaman untuk navigasi
  final List<Widget> _pages = [
    HomeContent(), // Konten Halaman Home
    PoolPage(), // Konten Halaman Pool
    FoodPage(), // Konten Halaman Menu
    AccountPage(), // Konten Halaman Account
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF405769),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo the jhon.png', // Pastikan file logo ada di folder `assets`
              height: 30,
            ),
            const SizedBox(width: 8), // Jarak antara logo dan teks
            const Text(
              'The Jhons',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white, // Warna putih untuk teks
              ),
            ),
          ],
        ),
      ),
      // Gunakan IndexedStack untuk mempertahankan status halaman
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFE0EFFC), // Gradasi biru tua
              Color(0xFF1F559C), // Gradasi biru muda
            ],
          ),
        ),
        child: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF405769),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pool),
            label: 'Pool',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

// Widget untuk Konten Halaman Home
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat Datang',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF405769),
              ),
            ),
            // Deskripsi
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Text(
                'The Jhons Cianjur adalah sebuah tempat wisata dan resort yang berlokasi di Cianjur, Jawa Barat. Tempat ini menawarkan berbagai macam fasilitas rekreasi, termasuk akomodasi, area bermain, wahana.',
                style: TextStyle(fontSize: 14, color: Color(0xFF405769)),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 20),

            // Rating dan Lokasi
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment:
                    CrossAxisAlignment.stretch, // Membuat tinggi sama
                children: [
                  // Kotak Rating
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              const SizedBox(width: 8),
                              Text(
                                '5.0',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text('Nyaman', style: TextStyle(fontSize: 16)),
                          Text('3 review',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),

                  // Kotak Lokasi
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Color(0xFF405769)),
                              const SizedBox(width: 8),
                              Text('Lokasi',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Kawasan Hutan Kota Cianjur, Jalan Desa Babakan, Jawa Barat, Indonesia',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Jam Operasional dan Harga
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.blue),
                          const SizedBox(width: 8),
                          Text(
                            'Jam Operasional',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                          height: 12), // Tambahkan jarak yang konsisten
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Senin - Minggu',
                            style: TextStyle(fontSize: 14),
                          ),
                          const SizedBox(height: 4), // Jarak antar teks
                          Text(
                            '08.00 - 21.00 WIB',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      // WeekDays
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: Color(0xFF405769),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'WeekDays',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '40K',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),

                      // WeekEnd
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: Color(0xFF405769),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'WeekEnd',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '40K',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Our Facility
            Text(
              'Our Facility',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 120, // Tinggi area gambar
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6, // Jumlah gambar
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(right: 10), // Spasi antar gambar
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/fasilitas/fasilitas${index + 1}.png', // Ganti sesuai nama gambar di assets
                        fit: BoxFit.cover,
                        height: 100,
                        width: 200, // Tambahkan lebar gambar
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // Our Menu
            Text(
              'Our Menu',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 120, // Tinggi area gambar
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6, // Jumlah gambar
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(right: 10), // Spasi antar gambar
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          10.0), // Radius untuk sudut melengkung
                      child: Image.asset(
                        'assets/menu/menu${index + 1}.jpg', // Ganti sesuai nama gambar di assets
                        fit: BoxFit.cover,
                        height: 100,
                        width: 210, // Tambahkan lebar gambar
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
