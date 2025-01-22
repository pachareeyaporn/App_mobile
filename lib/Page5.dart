import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  int likeCount = 0;
  int dislikeCount = 0;

  void _launchYouTube() async {
    final Uri url = Uri.parse('https://www.youtube.com/watch?v=4ezhnEcs44k');
    if (!await launchUrl(url)) {
      throw 'ไม่สามารถเปิด URL ได้: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ส้มตำ"),
        backgroundColor: Colors.green[100],
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_circle_right, color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {
              // ใช้ Navigator.pushNamed แทน
              Navigator.pushNamed(context, '/page6');
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
            'pic/ส้มตำ.jpg',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
            ),
              SizedBox(height: 20),
              Text(
                "เมนู: ส้มตำ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "ส้มตำ เป็นอาหารปรุงมาจากการทำตำส้ม คือการทำให้เปรี้ยวและเผ็ด ในลาวและอีสานจะเรียกว่าตำหมากหุ่ง ปรุงโดยนำมะละกอดิบที่สับแล้วฝานหรือขูดเป็นเส้นมาตำในครกเป็นหลัก พร้อมด้วยวัตถุดิบอื่น ๆ คือ มะเขือเทศลูกเล็ก มะเขือสีดา มะเขือเปราะ พริกสดหรือพริกแห้ง ถั่วฝักยาว กระเทียม และปรุงรสด้วยน้ำตาลปี๊บ น้ำปลา และมะนาว รวมถึงน้ำปลาร้า",
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
                "1. โขลกพริกและกระเทียมให้พอแตก ใส่ถั่วฝักยาว ถั่วลิสงและกุ้งแห้ง",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "2. ปรุงรสชาติด้วยน้ำปรุงส้มตำสูตรสำเร็จที่เตรียมไว้",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "3. ใส่เส้นมะละกอขูดและมะเขือเทศเชอร์รี่ คลุกเคล้าเบาๆ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "4. โขลกพริกและกระเทียมให้พอแตก ใส่ถั่วฝักยาว ถั่วลิสงและกุ้งแห้ง",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "เคล็ดลับการทำส้มตำไทย",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                "* สามารถดัดแปลงน้ำปรุงส้มตำนี้ไปทำเป็นส้มตำผลไม้ ตำข้าวโพด หรือตำไข่เค็มได้ตามต้องการ",
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