import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewWithCards(),
    );
  }
}

class ListViewWithCards extends StatelessWidget {
  final List<Map<String, String>> data = [
    {
      "nama": "Nabila Ahlisya Fatir",
      "hobi": "Berenang",
      "image": "images/foto1.jpg",
    },
    {
      "nama": "Arsa Cahaya",
      "hobi": "Menonton Film",
      "image": "images/foto2.jpg",
    },
    {
      "nama": "Paloma Ransi",
      "hobi": "Memasak",
      "image": "images/foto3.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: ClipRect(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset(
                    data[index]['image'] ?? '',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(data[index]['nama'] ?? ''),
              subtitle: Text(data[index]['hobi'] ?? ''),
            ),
          );
        },
      ),
    );
  }
}