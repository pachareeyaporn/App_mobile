import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FoodAndSnackApp(),
  ));
}

class FoodAndSnackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เเนะนำอาหารเเละของว่าง'),
        backgroundColor: Colors.yellow[200],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // ส่วนอาหาร
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'อาหารแนะนำ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _item(
                    'https://www.maggi.co.th/sites/default/files/srh_recipes/22083cfb8eb29281fa1992e9aa589423.jpeg',
                    'ไก่ทอด',
                    context,
                    true,
                    '1. น่องไก่ และสะโพกไก่ 8 ชิ้น\n2. เกลือ 2 ช้อนชา\n3. รากผักชี 2 ราก\n4. กระเทียม 5 กลีบ\n5. พริกไทย 1/2 ช้อนชา',
                  ),
                  _item(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1reCuv_mUzD8NcQRjJ74IgyksalEZUEQCVA&s',
                    'ขนมจีนน้ำเงี้ยว',
                    context,
                    true,
                    '1. ขนมจีน 1 กิโลกรัม\n2. ซี่โครงหมู 300 กรัม\n3. ดอกงิ้ว 10 กรัม\n4. เลือดไก่ 1 ก้อน\n5. ถั่วเน่า 1 ช้อนโต๊ะ',
                  ),
                  _item(
                    'https://media.istockphoto.com/id/619628284/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B9%81%E0%B8%81%E0%B8%87%E0%B9%80%E0%B8%82%E0%B8%B5%E0%B8%A2%E0%B8%A7%E0%B8%AB%E0%B8%A7%E0%B8%B2%E0%B8%99%E0%B9%84%E0%B8%81%E0%B9%88.jpg?s=612x612&w=0&k=20&c=2ejc11wK1iuetuZo4btq66eBE65ogGSWjY7BcfDDMLA=',
                    'แกงเขียวหวานไก่',
                    context,
                    true,
                    '1. เนื้อไก่ 500 กรัม\n2. พริกแกงเขียวหวาน 50 กรัม\n3. กะทิ 400 มิลลิลิตร\n4. มะเขือพวง 100 กรัม\n5. ใบโหระพา 20 กรัม',
                  ),
                  _item(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb6FucWRI_rGYxvVTMzp7ou3yDcR0WGas0iA&s',
                    'ต้มยำกุ้ง',
                    context,
                    true,
                    '1. กุ้งแม่น้ำ 500 กรัม\n2. เห็ดฟาง 100 กรัม\n3. ตะไคร้ 3 ต้น\n4. ใบมะกรูด 4 ใบ\n5. น้ำพริกเผา 1 ช้อนโต๊ะ',
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // ส่วนของว่าง
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'ของว่างแนะนำ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _item(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPG7_5va1cgXl4pZ-Qvu0e-FjzT8w6E-aL7w&s',
                    'ปอเปี๊ย',
                    context,
                    false,
                    '1. แผ่นปอเปี๊ย 10 แผ่น\n2. หมูสับ 200 กรัม\n3. แครอทขูดฝอย 50 กรัม\n4. วุ้นเส้น 50 กรัม\n5. น้ำมันสำหรับทอด',
                  ),
                  _item(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiFcQE6UcOg589V0pXWCgB9yFmYPPPCkn2IA&s',
                    'หมูโสร่ง',
                    context,
                    false,
                    '1. หมูสับ 300 กรัม\n2. รากผักชี 2 ราก\n3. กระเทียม 3 กลีบ\n4. พริกไทย 1/2 ช้อนชา\n5. เส้นหมี่ซั่วสำหรับพัน',
                  ),
                  _item(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF6LATOfx76md-yTtK8KOq3tyNIhm-OHKKvw&s',
                    'คอนด็อก',
                    context,
                    false,
                    '1. ไส้กรอก 5 ชิ้น\n2. แป้งทอดกรอบ 200 กรัม\n3. ไข่ไก่ 1 ฟอง\n4. เกล็ดขนมปัง 100 กรัม\n5. น้ำมันสำหรับทอด',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ฟังก์ชันสร้าง item ที่รวมอาหารและของว่าง
  Widget _item(String imageUrl, String name, BuildContext context, bool isFood, String description) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => isFood
                ? FoodDetailPage(foodName: name, imageUrl: imageUrl, description: description)
                : SnackDetailPage(snackName: name, imageUrl: imageUrl, description: description),
          ),
        );
      },
      child: Container(
        width: 150,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Image.network(imageUrl, width: 150, height: 150, fit: BoxFit.cover),
            SizedBox(height: 8),
            Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => isFood
                        ? FoodDetailPage(foodName: name, imageUrl: imageUrl, description: description)
                        : SnackDetailPage(snackName: name, imageUrl: imageUrl, description: description),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// หน้าแสดงรายละเอียดอาหาร
class FoodDetailPage extends StatefulWidget {
  final String foodName;
  final String imageUrl;
  final String description;

  FoodDetailPage({required this.foodName, required this.imageUrl, required this.description});

  @override
  _FoodDetailPageState createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  int likeCount = 0; // ตัวแปรนับไลค์
  int dislikeCount = 0; // ตัวแปรนับดิสไลค์

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.foodName}'),
        backgroundColor: Colors.pink[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${widget.foodName}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Image.network(widget.imageUrl, height: 200),
            SizedBox(height: 16),
            Text(
              '${widget.description}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.thumb_up, color: Colors.green),
                      onPressed: () {
                        setState(() {
                          likeCount++;
                        });
                      },
                    ),
                    Text('$likeCount'),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.thumb_down, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          dislikeCount++;
                        });
                      },
                    ),
                    Text('$dislikeCount'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// หน้าแสดงรายละเอียดของว่าง (เช่นเดียวกับ FoodDetailPage)
class SnackDetailPage extends StatefulWidget {
  final String snackName;
  final String imageUrl;
  final String description;

  SnackDetailPage({required this.snackName, required this.imageUrl, required this.description});

  @override
  _SnackDetailPageState createState() => _SnackDetailPageState();
}

class _SnackDetailPageState extends State<SnackDetailPage> {
  int likeCount = 0; // ตัวแปรนับไลค์
  int dislikeCount = 0; // ตัวแปรนับดิสไลค์

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.snackName}'),
        backgroundColor: Colors.orange[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${widget.snackName}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Image.network(widget.imageUrl, height: 200),
            SizedBox(height: 16),
            Text(
              '${widget.description}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.thumb_up, color: Colors.green),
                      onPressed: () {
                        setState(() {
                          likeCount++;
                        });
                      },
                    ),
                    Text('$likeCount'),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.thumb_down, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          dislikeCount++;
                        });
                      },
                    ),
                    Text('$dislikeCount'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}