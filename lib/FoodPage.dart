import 'package:flutter/material.dart';
import 'detail_page.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final foodItems = [
      {'name': 'ต้มยำกุ้ง', 'image': 'pic/ต้มยำกุ้ง.jpg', 'description': 'ต้มยำกุ้งแสนอร่อย'},
      {'name': 'ผัดไทย', 'image': 'pic/ผัดไทย.jpg', 'description': 'ผัดไทยแสนอร่อย'},
      {'name': 'แกงเขียวหวาน', 'image': 'pic/แกงเขียวหวาน.jpg', 'description': 'แกงเขียวหวานแสนอร่อย'},
      {'name': 'ข้าวมันไก่', 'image': 'pic/ข้าวมันไก่.jpg', 'description': 'ข้าวมันไก่แสนอร่อย'},
      {'name': 'ข้าวผัด', 'image': 'pic/ข้าวผัด.jpg', 'description': 'ข้าวผัดแสนอร่อย'},
      {'name': 'ก๋วยเตี๋ยวเรือ', 'image': 'pic/ก๋วยเตี๋ยวเรือ.jpg', 'description': 'ก๋วยเตี๋ยวเรือแสนอร่อย'},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: const Text('อาหาร'),
        leading: IconButton(
          icon: const Icon(Icons.home), // ไอคอนกลับหน้าหลัก
          onPressed: () {
            // โค้ดสำหรับกลับหน้าหลัก
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward), // ไอคอนหน้าถัดไป
            onPressed: () {
              // โค้ดสำหรับไปยังหน้าถัดไป
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NextPage(), // สร้างหน้าถัดไปในโค้ด
                ),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          final food = foodItems[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    name: food['name']!,
                    image: food['image']!,
                    description: food['description']!,
                  ),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      food['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      food['name']!,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink[100],
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          // โค้ดสำหรับไปยังหน้าถัดไป
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NextPage(),
            ),
          );
        },
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: const Text('หน้าถัดไป'),
      ),
      body: const Center(
        child: Text(
          'นี่คือหน้าถัดไป',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
