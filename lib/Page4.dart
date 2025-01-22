import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page4 extends StatefulWidget {
  @override
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
              SizedBox(height: 20),
              Text(
                "เมนู: แกงเขียวหวาน",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "แกงเขียวหวาน เป็นอาหารไทยประเภทแกง ประกอบด้วยเนื้อ ปลา ไก่ หรือหมู และผัก ปรุงรสด้วยกะทิ มะเขือ น้ำตาล น้ำปลา ใบมะกรูด และใบโหระพา นิยมรับประทานกับข้าวสวยหรือขนมจีนน้ำพริกแกงมีสีเขียวเพราะใช้พริกขี้หนูสดสีเขียว บางท้องที่ใส่ใบพริกลงไปตำด้วย ในประเทศกัมพูชามีการรับแกงเขียวหวานไป เรียกว่า ซ็อมลอกะติ โดยมีลักษณะเป็นน้ำกะทิใส ๆ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "วิธีทำ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                " 1. โขลกส่วนผสมพริกแกงเขียวหวานให้เข้ากัน โดยเริ่มจากตำพริก ตามลำดับ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                " 2.ใช้ไฟแรงปานกลางเคี่ยวหัวกะทิให้แตกมัน แล้วใส่พริกแกงเขียวหวานตาม เมื่อผัดจนสุก แล้วใส่เนื้อไก่ ใบมะกรูด ผัดไปสักพักแล้วใส่หางกะทิลงไป",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                " 3. ปรุงรสด้วยน้ำตาลทรายแดง น้ำปลา แล้วใส่มะเขือพวงลงไป ตามด้วยมะเขือเปราะ ปิดท้ายด้วยใบโหระพา และพริกชี้ฟ้าหั่นแฉลบ เมื่อสุกดีแล้ว ตักเสิร์ฟใส่ชาม ทานกับข้าวสวยร้อนๆ",
                textAlign: TextAlign.center,
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
                          }
                          );
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
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.home, color: Colors.blue, size: 50),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    icon: Icon(Icons.play_circle_outline, color: Colors.red, size: 50),
                    onPressed: _launchYouTube,
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}