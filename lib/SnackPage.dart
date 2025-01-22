import 'package:flutter/material.dart';
import 'detail_page.dart';

class SnackPage extends StatelessWidget {
  const SnackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final snackItems = [
      {'name': 'มันฝรั่งทอด', 'image': 'pic/มันฝรั่งทอด.jpg', 'description': 'มันฝรั่งทอดกรอบ'},
      {'name': 'คุกกี้', 'image': 'pic/คุกกี้.jpg', 'description': 'คุกกี้หวานกรอบ'},
      {
        'name': 'ป๊อปคอร์น',
        'image': 'pic/ป๊อปคอร์น.jpg',
        'description': 'ส่วนผสม น้ำมันพืช 4 ช้อนโต๊ะ เมล็ดข้าวโพด 100 กรัม น้ำตาลทราย 150 กรัม น้ำเปล่า 3 ช้อนโต๊ะ เกลือ 1/2 ช้อนชา ครีมสด 2 ช้อนโต๊ะ เนยจืด 30 กรัม เบคกิ้งโซดา 1/4 ช้อนชา นมผง 10 กรัม น้ำตาลปี๊บ 1 ช้อนโต๊ะ อบอุณหภูมิ 150 นาที ไฟบน-ล่าง 10 นาที',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        title: const Text('ของว่าง'),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            // โค้ดสำหรับกลับหน้าหลัก
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
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
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: snackItems.length,
        itemBuilder: (context, index) {
          final snack = snackItems[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    name: snack['name']!,
                    image: snack['image']!,
                    description: snack['description']!,
                  ),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      snack['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      snack['name']!,
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
        backgroundColor: Colors.purple[100],
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
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
        backgroundColor: Colors.purple[100],
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
