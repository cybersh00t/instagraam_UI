import 'package:flutter/material.dart';
import 'package:instagram_ui/widget/bubble_story.dart';
import 'package:instagram_ui/widget/user_post.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> users = [
    'Robert',
    'Sabam',
    'Hasiholan',
    'Robinsar',
    'Immanuel',
    'Dian',
    'Hotni',
    'Tamba',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Icon(Icons.add_box_outlined, size: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.favorite_border, size: 30),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.send_outlined, size: 30),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 120, // Tinggi tetap untuk widget ListView
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: users.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 80, // Lebar tiap BubbleStory
                  child: BubbleStory(name: users[index]),
                );
              },
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return UserPost(
                  name: users[index],
                );
              },
              itemCount: users.length,
            ),
          )
        ],
      ),
    );
  }
}
