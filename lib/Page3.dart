import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int likeCount = 0;
  int dislikeCount = 0;

  void _launchYouTube() async {
    final Uri url = Uri.parse('https://www.youtube.com/watch?v=tTJgh6AOG9k');
    if (!await launchUrl(url)) {
      throw 'ไม่สามารถเปิด URL ได้: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ผัดไทย"),
        backgroundColor: Colors.green[100],
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_circle_right, color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {
              // ใช้ Navigator.pushNamed แทน
              Navigator.pushNamed(context, '/page4');
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
            'pic/ผัดไทย.jpg',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
            ),
              SizedBox(height: 20),
              Text(
                "เมนู: ผัดไทย",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "ผัดไทย pad thai ถือเป็นเมนูอาหารประจำชาติไทย ที่เป็นซิกเนเจอร์ และโด่งดังไปทั่วโลก เป็นเมนูที่นักท่องเที่ยวทั่วทุกมุมโลกถ้าได้มาเยือนประเทศไทยต้องกินให้ได้ โดยเมนูผัดไทยเป็นอาหารที่ได้รับอิทธิพลจากอาหารจีน แต่เดิมเรียกอาหารชนิดนี้ว่า “ก๋วยเตี๋ยวผัด” ต่อมาได้เปลี่ยนชื่อเป็นผัดไทย มีรสชาติเปรี้ยว หวาน เค็ม เผ็ด ครบรส ตามแบบฉบับรสชาติของคนไทยแท้ๆ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "   ผัดไทย หมายถึง อาหารประเภทผัดที่นําเอาก๊วยเตี๋ยวเส้นเล็กแบน มาผัดกับกระเทียม เต้าหู หัวไชโป๊สับ ถั่วงอก กุยช่าย ไข่ กุ้งแห้ง ปรุงรสด้วยน้ํามะขามเปียก น้ําตาลปีบ น้ําปลา พริกแห้งป่น เพิ่มรสมันด้วยถั่วลิสงคั่ว ปนหยาบ รับประทานกับหัวปลี ใบบัวบก กุยช่ายและถั่วงอก",
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
                "1. เตรียมวัตถุดิบต่างๆ ไว้ให้พร้อม ก่อนเริ่มผัด",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height:10),
              Text(
                "2. ตั้งกระทะให้ร้อน ใส่น้ำมันพืช นำกุ้งสดแกะเปลือก แกะหัว ผัดให้ใกล้สุก และตักขึ้นพักไว้",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "3. น้ำมันที่เหลือจากการผัดกุ้งไม่ต้องทิ้ง ใส่เต้าหู้เหลืองผัดให้สุก ใส่หัวไชโป๊สับ และใส่น้ำผัดไทยที่เตรียมไว้ในปริมาณ 1 ใน 4 ของเส้นที่เตรียมไว้ และสามารถเติมทีหลังได้",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "4. ใส่เส้นผัดไทยที่ผ่านการแช่น้ำไว้แล้ว ลงในกระทะเมื่อเส้นเริ่มสุก ตอกไข่ ขยี้กับเส้น ถ้าแห้งไปก็เติมน้ำผัดไทย",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "5. โรยกุ้งแห้งในขั้นตอนสุดท้าย เติมผัก เช่น ถั่วงอก ใบกระเทียม",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "6. จัดจาน ตักผัดไทยใส่จาน วางกุ้งไว้บนสุด แล้วตักถั่วลิสงคั่ว มะนาวผ่าซีก พริกป่น น้ำตาลทราย ใบกระเทียม หัวปลี พร้อมเสิร์ฟ",
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