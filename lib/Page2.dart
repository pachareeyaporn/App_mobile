import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int likeCount = 0;
  int dislikeCount = 0;

  void _launchYouTube() async {
    final Uri url = Uri.parse('https://www.youtube.com/watch?v=Tz7jH-XijB4');
    if (!await launchUrl(url)) {
      throw 'ไม่สามารถเปิด URL ได้: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ต้มยำกุ้ง"),
        backgroundColor: Colors.green[100],
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_circle_right, color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {
              // ใช้ Navigator.pushNamed แทน
              Navigator.pushNamed(context, '/page3');
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
                'pic/ต้มยำกุ้ง.jpg',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                "เมนู: ต้มยำกุ้ง",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "ต้มยำกุ้ง เป็นอาหารไทยภาคกลางประเภทต้มยำ ซึ่งเป็นที่นิยมรับประทานไปทุกภาคในประเทศไทย เป็นอาหารที่รับประทานกับข้าว มีรสเปรี้ยวและเผ็ดเป็นหลักผสมเค็มและหวานเล็กน้อย แบ่งออกเป็น 2 ประเภท คือ ต้มยำน้ำใส และ ต้มยำน้ำข้น",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "วิธีทำ",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                "1. ใส่น้ำซุปลงต้มด้วยไฟปานกลางจนเดือด",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "2. เติม น้ำพริกเผา ตราฉั่วฮะเส็ง คนผสมจนเข้ากัน ปรุงรสด้วยน้ำปลา",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "3. พอน้ำซุปเดือด ใส่กุ้งและนมสด ต้มจนกระทั่งเดือด",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "4. เติมเห็ดฟางและส่วนผสมที่เหลือทั้งหมด คนผสมจนเข้ากันให้พอทั่ว จึงยกลง",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "5. ปรุงรสเพิ่มด้วยน้ำมะนาว และ น้ำมันน้ำพริกเผา ตราฉั่วฮะเส็ง จากนั้นปิดไฟ ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "6. โรยด้วยพริกขี้หนูแห้งทอดกรอบและผักชีก่อนรับประทาน",
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
