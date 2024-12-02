import 'package:flutter/material.dart';

class BubbleStory extends StatelessWidget {
  const BubbleStory({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Batasi tinggi widget sesuai isinya
        mainAxisAlignment: MainAxisAlignment.center, // Posisikan di tengah
        children: [
          CircleAvatar(
            radius: 41,
            backgroundColor: Colors.pink,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage('https://i.pravatar.cc/100?u=$name'),
            ),
          ),
          const SizedBox(height: 5), // Jarak antar elemen
          Flexible( // Membatasi teks agar tidak meluap
            child: Text(
              name,
              style: const TextStyle(fontSize: 14),
              overflow: TextOverflow.ellipsis, // Potong teks jika terlalu panjang
              maxLines: 1, // Batasi jumlah baris
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
