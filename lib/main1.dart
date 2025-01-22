import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodRecommendationScreen(),
    );
  }
}

class FoodRecommendationScreen extends StatelessWidget {
  // รายการ URL ของภาพอาหาร
  final List<String> foodImages = [
    'https://www.maggi.co.th/sites/default/files/srh_recipes/22083cfb8eb29281fa1992e9aa589423.jpeg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1reCuv_mUzD8NcQRjJ74IgyksalEZUEQCVA&s',
    'https://media.istockphoto.com/id/619628284/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B9%81%E0%B8%81%E0%B8%87%E0%B9%80%E0%B8%82%E0%B8%B5%E0%B8%A2%E0%B8%A7%E0%B8%AB%E0%B8%A7%E0%B8%B2%E0%B8%99%E0%B9%84%E0%B8%81%E0%B9%88.jpg?s=612x612&w=0&k=20&c=2ejc11wK1iuetuZo4btq66eBE65ogGSWjY7BcfDDMLA=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb6FucWRI_rGYxvVTMzp7ou3yDcR0WGas0iA&s'
  ];

  // รายการชื่ออาหาร
 final List<String> foodNames = [
    'ไก่ทอด',
    'ซุปต้มยำ',
    'แกงเขียวหวานไก่',
    'ส้มตำ'
  ];

  // รายการ URL ของภาพของว่าง
  final List<String> snackImages = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPG7_5va1cgXl4pZ-Qvu0e-FjzT8w6E-aL7w&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiFcQE6UcOg589V0pXWCgB9yFmYPPPCkn2IA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF6LATOfx76md-yTtK8KOq3tyNIhm-OHKKvw&s',
  ];
  final List<String> snackNames = [
    'ปอเปี๊ย',
    'หมูโสร่ง',
    'คอนด็อก',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('แนะนำอาหารและของว่าง'),
        backgroundColor: Colors.green[200],
      ),
      body: Column(
        children: [
          // Food section
          Expanded(
            flex: 2,
            child: GridView.builder(
              gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: foodImages.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                    children: [
        Image.network(foodImages[index], height: 100, width: 100),
                      // ใช้ชื่อจาก foodNames แสดงข้อความอาหารที่ตรงกัน
                      Text(foodNames[index]), 
                      IconButton(
                        icon: Icon(Icons.arrow_forward),
                        onPressed: () {
                          // Navigate to next page
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          
          // Snack section using Image.network
          Expanded(
            flex: 1,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: snackImages.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
         Image.network(snackImages[index], height: 40, width: 100),
                      // ใช้ชื่อจาก snackNames แสดงข้อความของว่างที่ตรงกัน
                      Text(snackNames[index]), 
                      IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                          // Navigate to next page
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new item logic here
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}