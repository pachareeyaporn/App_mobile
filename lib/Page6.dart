// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: use_key_in_widget_constructors
class Page6 extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  int likeCount = 0;
  int dislikeCount = 0;

  void _launchYouTube() async {
    final Uri url = Uri.parse('https://www.youtube.com/watch?v=wAc8EoMe8mc');
    if (!await launchUrl(url)) {
      throw 'ไม่สามารถเปิด URL ได้: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("มันฝรั่งทอด"),
        backgroundColor: Colors.yellow[100],
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_circle_right, color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {
              // ใช้ Navigator.pushNamed แทน
              Navigator.pushNamed(context, '/page7');
            },
          ),
        ],
      ),
      backgroundColor: Colors.pink[50], 
      body: SingleChildScrollView( 
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
            'pic/มันฝรั่งทอด.jpg',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
            ),
              // ignore: prefer_const_constructors
              SizedBox(height: 20),
              // ignore: prefer_const_constructors
              Text(
                "เมนู:มันฝรั่งทอด",
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 20),
              // ignore: prefer_const_constructors
              Text(
                "มันฝรั่งแผ่น (อังกฤษ: potato chip) เป็นมันฝรั่งแผ่นบาง ๆ ที่นำมาอบหรือทอดจนกรอบ นิยมรับประทานเป็นอาหารว่าง เครื่องเคียง หรืออาหารเรียกน้ำย่อย มันฝรั่งแผ่นพื้นฐานจะใส่เกลือหลังทำเสร็จ แบบอื่น ๆ จะใส่เครื่องปรุงและส่วนผสมต่าง ๆ เช่นสมุนไพร เครื่องเทศ ชีส รสเทียม และสารเติมแต่ง",
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
              SizedBox(height: 10),
              // ignore: prefer_const_constructors
              Text(
                "1. นำมันฝรั่งไปล้างน้ำให้สะอาด ปอกเปลือก เสร็จแล้วนำไปแช่น้ำทันที และล้างน้ำออกอีก 2-3 รอบ",
                textAlign: TextAlign.center,
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 16),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 10),
              // ignore: prefer_const_constructors
              Text(
                "2. นำมาหั่นให้ได้ความหนา ½ เซนติเมตร จากนั้นนำไปล้างน้ำอีก 1-2 รอบ เพื่อให้ยางหลุดไป",
                textAlign: TextAlign.center,
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 16),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 10),
              // ignore: prefer_const_constructors
              Text(
                "3. แช่น้ำทิ้งไว้ประมาณ 15-20 นาที จากนั้นล้างอีกรอบ และนำขึ้นให้สะเด็ดน้ำ",
                textAlign: TextAlign.center,
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 16),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 10),
              // ignore: prefer_const_constructors
              Text(
                "4. นำทิชชู่มาซับให้แห้ง จากนั้นเทแป้งทอดกรอบใส่ชามผสม ตามด้วยน้ำเย็นจัด คลุกเคล้าให้เข้ากัน ",
                textAlign: TextAlign.center,
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 16),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 10),
              // ignore: prefer_const_constructors
              Text(
                "5. ตั้งกระทะ ใส่น้ำมัน รอให้ไฟร้อนดี ใช้ไฟกลางค่อนอ่อน จากนั้นนำมันฝรั่งไปชุบให้ทั่ว จากนั้นนำไปลงทอด",
                textAlign: TextAlign.center,
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 16),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 10),
              // ignore: prefer_const_constructors
              Text(
                "6. ทอดให้เป็นสีเหลืองอ่อนก่อน จากนั้นตักขึ้นพัก ",
                textAlign: TextAlign.center,
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 16),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 10),
              // ignore: prefer_const_constructors
              Text(
                "7.จากนั้นนำลงไปทอดรอบสองโดยใช้ไฟกลาง รอบนี้ทอดให้ออกสีเหลืองกรอบดี พอใกล้จะได้ที่ ให้เร่งไฟแรงประมาณ 1-2 นาที",
                textAlign: TextAlign.center,
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 16),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 10),
              // ignore: prefer_const_constructors
              Text(
                "8. ตักขึ้นพักให้สะเด็ดน้ำมัน จากนั้นนำมาคลุกกับผงเขย่าตามชอบ",
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
                          });
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