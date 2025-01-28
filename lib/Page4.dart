// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: use_key_in_widget_constructors
class Page4 extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  int likeCount = 0;
  int dislikeCount = 0;

  void _launchYouTube() async {
    final Uri url = Uri.parse('https://www.youtube.com/watch?v=wlZiLVb4iuE');
    if (!await launchUrl(url)) {
      throw 'ไม่สามารถเปิด URL ได้: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("แกงเขียวหวาน"),
        backgroundColor: Colors.green[100],
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_circle_right, color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {
              // ใช้ Navigator.pushNamed แทน
              Navigator.pushNamed(context, '/page5');
            },
          ),
        ],
      ),
      backgroundColor: Colors.yellow[50], 
      body: SingleChildScrollView( 
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
            'pic/แกงเขียวหวาน.jpg',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
            ),
              // ignore: prefer_const_constructors
              SizedBox(height: 20),
              // ignore: prefer_const_constructors
              Text(
                "เมนู: แกงเขียวหวาน",
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 20),
              // ignore: prefer_const_constructors
              Text(
                "แกงเขียวหวาน เป็นอาหารไทยประเภทแกง ประกอบด้วยเนื้อ ปลา ไก่ หรือหมู และผัก ปรุงรสด้วยกะทิ มะเขือ น้ำตาล น้ำปลา ใบมะกรูด และใบโหระพา นิยมรับประทานกับข้าวสวยหรือขนมจีนน้ำพริกแกงมีสีเขียวเพราะใช้พริกขี้หนูสดสีเขียว บางท้องที่ใส่ใบพริกลงไปตำด้วย ในประเทศกัมพูชามีการรับแกงเขียวหวานไป เรียกว่า ซ็อมลอกะติ โดยมีลักษณะเป็นน้ำกะทิใส ๆ",
                textAlign: TextAlign.center,
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 16),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 20),
              // ignore: prefer_const_constructors
              Text(
                "วิธีทำ",
                textAlign: TextAlign.center,
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 18),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 20),
              // ignore: prefer_const_constructors
              Text(
                " 1. โขลกส่วนผสมพริกแกงเขียวหวานให้เข้ากัน โดยเริ่มจากตำพริก ตามลำดับ",
                textAlign: TextAlign.center,
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 16),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 10),
              // ignore: prefer_const_constructors
              Text(
                " 2.ใช้ไฟแรงปานกลางเคี่ยวหัวกะทิให้แตกมัน แล้วใส่พริกแกงเขียวหวานตาม เมื่อผัดจนสุก แล้วใส่เนื้อไก่ ใบมะกรูด ผัดไปสักพักแล้วใส่หางกะทิลงไป",
                textAlign: TextAlign.center,
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 16),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 10),
              // ignore: prefer_const_constructors
              Text(
                " 3. ปรุงรสด้วยน้ำตาลทรายแดง น้ำปลา แล้วใส่มะเขือพวงลงไป ตามด้วยมะเขือเปราะ ปิดท้ายด้วยใบโหระพา และพริกชี้ฟ้าหั่นแฉลบ เมื่อสุกดีแล้ว ตักเสิร์ฟใส่ชาม ทานกับข้าวสวยร้อนๆ",
                textAlign: TextAlign.center,
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 16),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        // ignore: prefer_const_constructors
                        icon: Icon(Icons.thumb_up, color: Colors.green),
                        onPressed: () {
                          setState(() {
                            likeCount++;
                          }
                          );
                        },
                      ),
                      Text('$likeCount'),
                    ],
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(width: 20),
                  Column(
                    children: [
                      IconButton(
                        // ignore: prefer_const_constructors
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
              // ignore: prefer_const_constructors
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    // ignore: prefer_const_constructors
                    icon: Icon(Icons.home, color: Colors.blue, size: 50),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(width: 20),
                  IconButton(
                    // ignore: prefer_const_constructors
                    icon: Icon(Icons.play_circle_outline, color: Colors.red, size: 50),
                    onPressed: _launchYouTube,
                  ),
                ],
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}