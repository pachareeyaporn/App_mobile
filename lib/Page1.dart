// ignore_for_file: file_names

mport 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> foodList = [
      {
        "name": "ต้มยำกุ้ง",
        "route": "/page2",
        "image": "pic/ต้มยำกุ้ง.jpg"
      },
      {
        "name": "ผัดไทย",
        "route": "/page3",
        "image": "pic/ผัดไทย.jpg"
      },
      {
        "name": "แกงเขียวหวาน",
        "route": "/page4",
        "image": "pic/แกงเขียวหวาน.jpg"
      },
      {
        "name": "ส้มตำ",
        "route": "/page5",
        "image": "pic/ส้มตำ.jpg"
      },
    ];

    final List<Map<String, String>> snackList = [
      {
        "name": "มันฝรั่งทอด",
        "route": "/page6",
        "image": "pic/มันฝรั่งทอด.jpg"
      },
      {
        "name": "คุกกี้",
        "route": "/page7",
        "image": "pic/คุกกี้.jpg"
      },
      {
        "name": "ป๊อปคอร์น",
        "route": "/page8",
        "image": "pic/ป๊อปคอร์น.jpg"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("แนะนำอาหาร"),
        backgroundColor: Colors.pink[100],
        actions: [
          IconButton(
            // ignore: prefer_const_constructors
            icon: Icon(Icons.menu),
            onPressed: () {
              // แสดงข้อความ "เมนูถูกกด"
              ScaffoldMessenger.of(context).showSnackBar(
                // ignore: prefer_const_constructors
                SnackBar(content: Text("เมนูถูกกด")),
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.lightBlue[50], 
      body: ListView(
        children: [
          // เมนูอาหาร
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(8.0),
            // ignore: prefer_const_constructors
            child: Text(
              "เมนูอาหาร",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          Divider(),
          ...foodList.map((food) {
            return ListTile(
              leading: Image.asset(
                food['image']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(food['name']!),
              // ignore: prefer_const_constructors
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, food['route']!);
              },
            );
          // ignore: unnecessary_to_list_in_spreads
          }).toList(),

          // เมนูของว่าง
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(8.0),
            // ignore: prefer_const_constructors
            child: Text(
              "เมนูของว่าง",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          Divider(),
          ...snackList.map((snack) {
            return ListTile(
              leading: Image.asset(
                snack['image']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(snack['name']!),
              // ignore: prefer_const_constructors
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, snack['route']!);
              },
            );
          // ignore: unnecessary_to_list_in_spreads
          }).toList(),
        ],
      ),
    );
  }
}
