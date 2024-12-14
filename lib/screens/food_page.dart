import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCategory(
              context: context,
              categoryTitle: 'Makanan',
              items: [
                _buildFoodItem('assets/menu/menu1.jpg', 'Pop Mie', '10k'),
                _buildFoodItem('assets/menu/menu4.jpg', 'Nasi Goreng', '25k'),
                _buildFoodItem('assets/menu/menu7.jpg', 'Bakso', '25k'),
                _buildFoodItem('assets/menu/menu9.jpg', 'Soto', '25k'),
                _buildFoodItem('assets/menu/menu8.jpg', 'Mie ayam', '25k'),
              ],
            ),
            const SizedBox(height: 16),
            _buildCategory(
              context: context,
              categoryTitle: 'Minuman',
              items: [
                _buildFoodItem('assets/menu/menu2.jpg', 'Pop Ice', '5k'),
                _buildFoodItem('assets/menu/menu5.jpg', 'Es Jeruk', '10k'),
                _buildFoodItem('assets/menu/menu10.jpg', 'Kopi', '5k'),
                _buildFoodItem('assets/menu/menu12.jpg', 'Es Cendol', '10k'),
                _buildFoodItem('assets/menu/menu11.jpg', 'Sop buah', '10k'),
              ],
            ),
            const SizedBox(height: 16),
            _buildCategory(
              context: context,
              categoryTitle: 'Cemilan',
              items: [
                _buildFoodItem('assets/menu/menu3.jpg', 'Chitato', '10k'),
                _buildFoodItem('assets/menu/menu6.jpg', 'Nasi Goreng', '25k'),
                _buildFoodItem('assets/image 7.png', 'Pop Mie', '10k'),
                _buildFoodItem(
                    'assets/images/nasigoreng.png', 'Nasi Goreng', '25k'),
                _buildFoodItem('assets/images/popmie.png', 'Pop Mie', '10k'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory({
    required BuildContext context,
    required String categoryTitle,
    required List<Widget> items,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              categoryTitle,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Enable horizontal scrolling
          child: Row(
            children: items.map((item) {
              return Padding(
                padding: const EdgeInsets.only(
                    right: 16.0), // Add spacing between items
                child: item,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildFoodItem(String imagePath, String name, String price) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      child: SizedBox(
        width: 190, // Set a fixed width for the card
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                height: 160, // Larger image size
                width: 180,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
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
