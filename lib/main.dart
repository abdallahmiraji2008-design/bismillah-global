import 'package:flutter/material.dart';

void main() => runApp(BismillahGlobalApp());

class BismillahGlobalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BISMILLAH GLOBAL',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> features = [
    {"title": "QURAN", "icon": Icons.menu_book, "color": Colors.green},
    {"title": "SALA", "icon": Icons.access_time, "color": Colors.blue},
    {"title": "QIBLA", "icon": Icons.explore, "color": Colors.orange},
    {"title": "DHIKR", "icon": Icons.favorite, "color": Colors.red},
    {"title": "RAMADAN", "icon": Icons.nights_stay, "color": Colors.purple},
    {"title": "HALAL", "icon": Icons.restaurant, "color": Colors.teal},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BISMILLAH GLOBAL', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.green[700],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.green[50],
            child: Column(
              children: [
                Text('بسم الله الرحمن الرحيم', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text('Welcome to Global Muslim App', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(12),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
              itemCount: features.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${features[index]["title"]} - Coming Soon!')));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(features[index]["icon"], size: 50, color: features[index]["color"]),
                        SizedBox(height: 10),
                        Text(features[index]["title"], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
