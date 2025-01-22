import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final String name;
  final String image;
  final String description;

  const DetailPage({
    Key? key,
    required this.name,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int likeCount = 0;
  int dislikeCount = 0;

  Future<void> _launchURL(String url) async {
    if (!await launch(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(widget.image, height: 250, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(widget.description),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.thumb_up, color: Colors.green),
                onPressed: () {
                  setState(() {
                    likeCount++;
                  });
                },
              ),
              Text('$likeCount'),
              IconButton(
                icon: const Icon(Icons.thumb_down, color: Colors.red),
                onPressed: () {
                  setState(() {
                    dislikeCount++;
                  });
                },
              ),
              Text('$dislikeCount'),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('กลับหน้าหลัก'),
          ),
          ElevatedButton(
            onPressed: () {
              _launchURL('https://www.youtube.com/results?search_query=${widget.name}');
            },
            child: const Text('ดูใน YouTube'),
          ),
          
        ],
      ),
    );
  }
}
