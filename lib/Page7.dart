import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page7 extends StatefulWidget {
  @override
  _Page7State createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  int likeCount = 0;
  int dislikeCount = 0;

  void _launchYouTube() async {
    final Uri url = Uri.parse('https://www.youtube.com/watch?v=arovvOOAmJw');
    if (!await launchUrl(url)) {
      throw 'ไม่สามารถเปิด URL ได้: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("คุกกี้"),
        backgroundColor: Colors.yellow[100],
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_circle_right, color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {
              // ใช้ Navigator.pushNamed แทน
              Navigator.pushNamed(context, '/page8');
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
            'pic/คุกกี้.jpg',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
            ),
              SizedBox(height: 20),
              Text(
                "เมนู: คุกกี้",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "คุกกี้ คือขนมอบชิ้นเล็ก ๆ รูปร่างแบน ซึ่งทำจากแป้งสาลี คำว่าคุกกี้มีที่มาจากคำในภาษาดัตช์ koekje ซึ่งหมายถึง เค้กชิ้นเล็ก ๆ แรกเริ่มเดิมทีนั้น คุกกี้ทำโดยการแบ่งแป้งขนมเค้กที่ผสมแล้วออกมาส่วนหนึ่ง จากนั้นแบ่งออกเป็นชิ้นเล็ก ๆ แล้วนำเข้าเตาอบ เพื่อทดสอบอุณหภูมิที่จะใช้อบขนมเค้ก คำว่า คุกกี้ (cookie) ใช้กันในสหรัฐอเมริกาและแคนาดา ในขณะที่ในสหราชอาณาจักรจะเรียกขนมแบบเดียวกันนี้ว่า บิสกิต (biscuit)",
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
                "1. ใส่เนยลงอ่างผสม ตีเนยประมาณ 3-4 นาที จนขึ้นฟู",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "2. ใส่น้ำตาลไอซิ่ง ตีผสมประมาณ 2 นาที ใส่ไข่ลงไป ตีผสมประมาณ 2 นาที พักไว้ ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "3. ผสมแป้งกับนมผง ร่อนแป้งลงในชาม แบ่งแป้งลงผสมในส่วนผสมเนย ประมาณ 2-3 ครั้ง แบ่งแป้งออกมาแล้วผสมสีตามชอบเพื่อบีบเป็นเกสรดอกไม้",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "4. บีบคุกกี้เป็นรูปดอกไม้ บีบเกสรลงตรงกลางคุกกี้ดอกไม้ให้สวยงาม นำเข้าอบที่อุณหภูมิ 160 องศาเซลเซียส ประมาณ 15 นาที ใช้ไฟบน-ล่าง ถ้าอยากให้คุกกี้กรอบมากขึ้นและเก็บได้นาน ให้นำอบครั้งที่ 2 เพื่อไล่ความชื้น อบที่อุณหภูมิ 80 องศาเซลเซียส ประมาณ 10 นาที",
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