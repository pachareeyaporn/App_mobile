import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page8 extends StatefulWidget {
  @override
  _Page8State createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  int likeCount = 0;
  int dislikeCount = 0;

  void _launchYouTube() async {
    final Uri url = Uri.parse('https://www.youtube.com/watch?v=Xe9xSIynKdc');
    if (!await launchUrl(url)) {
      throw 'ไม่สามารถเปิด URL ได้: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ป๊อปคอร์น"),
        backgroundColor: Colors.yellow[100],
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_circle_right, color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {
              // ใช้ Navigator.pushNamed แทน
              Navigator.pushNamed(context, '/');
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
            'pic/ป๊อปคอร์น.jpg',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
            ),
              SizedBox(height: 20),
              Text(
                "เมนู: ป๊อปคอร์น",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "ข้าวโพดคั่ว (popcorn) เป็นผลิตภัณฑ์ที่ใช้ความร้อนแห้งจากการคั่ว ทำให้เมล็ดข้าวโพดแตกหรือพองขยายตัว เมล็ดข้าวโพดที่ใช้สำหรับการทำเป็นข้าวโพดคั่วเป็นพันธุ์เฉพาะที่มีสมบัติแตกฟูได้ดีเมื่อถูกความร้อน ทั้งนี้อาจเป็นเพราะส่วนเนื้อในเมล็ดไม่มีเยื่อหุ้มเมล็ด (seed coat) ข้าวโพดคั่วเป็นอาหารที่มีมาแต่โบราณกาล ได้มีการค้นพบร่องรอยของการใช้ประโยชน์ของข้าวโพดคั่วมาเป็นเวลานานกว่า 4,000 ปี ในแถบประเทศนิวเมกซิโก และเข้ามาแพร่หลายในสหรัฐอเมริกาเมื่อปลายศตวรรษที่ 18 ข้าวโพดคั่วเป็นอาหารที่ได้รับความนิยมอย่างแพร่หลายจากชาวอเมริกัน ร้อยละ 70 ของผลผลิตที่ในปี พ.ศ.2527 จำหน่ายสำหรับการนำไปบริโภคภายในครัวเรือน ที่เหลือประมาณร้อยละ 30 จำหน่ายไปยังร้านค้าปลีกที่จำหน่ายข้าวโพดคั่วตามย่านชุมชนต่างๆ เช่น หน้าโรงภาพยนตร์ ในสวนสนุก ศูนย์การค้า เป็นต้น และจำหน่ายให้อุตสาหกรรมขนมหวาน เพื่อใช้ในการผลิตข้าวโพดคั่วเคลือบคาราเมล",
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
                "1. ตั้งหม้อ ใช้ไฟกลาง ใส่เนย คนให้เนยให้ละลาย เมื่อเนยละลาย ใส่เม็ดข้าวโพดตามลงไป คนให้เนยเข้าเม็ดเข้าโพด ปิดฝาหม้อ คอยเขย่าหม้อ เพื่อให้ความร้อนกระจายอย่างทั่วถึง เมื่อข้าวโพดสุกแล้วให้ยกขึ้นพักไว้",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "2.ตั้งกระทะใช้ไฟกลาง ใส่น้ำตาลทราย น้ำเปล่า คอยคนเรื่อย ๆ จนน้ำตาลทรายละลายเปลี่ยนสีคาราเมล จากนั้น หยุดคนปล่อยให้เดือด",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "3. จากนั้น ยกลง ใส่เนยเค็ม คนให้ละลาย ตามด้วยใส่วิปปิ้งครีม คนผสมให้เข้ากัน จนซอสคาราเมลฟู",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "4. นำน้ำซอสคาราเมลที่ทำไว้ ไปราดลงข้าวโพดให้ทั่ว ใช้ช้อนคลุกเค้าให้ซอสคาราเมลซึมเข้าไปในข้าวโพด",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "5. นำเข้าเตาอบไฟฟ้า อบด้วยไฟบน-ไฟล่าง อุณหภูมิ 120 องศาเซลเซียส ประมาณ 60 นาที ระหว่างการอบ ควรเปิดเตา แล้วนำมาคลุกทุก 15 นาที จนอบครบตามเวลา และนำออกมาใส่ถ้วยใบใหญ่ ๆ แล้วคนเร็ว ๆ เพื่อไม่ให้ป๊อปคอร์นติดกัน พร้อมเสิร์ฟ",
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