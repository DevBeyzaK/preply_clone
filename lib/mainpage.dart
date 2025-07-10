import 'package:flutter/material.dart';
import 'package:preply_clone/home.dart';
import 'package:preply_clone/insights.dart';
import 'package:preply_clone/messages.dart';
import 'package:preply_clone/schedule.dart';  // Home sayfanın ayrı dosyada olduğunu varsayıyorum

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0; // final olmamalı

  final List<Widget> _pages = [
    const Home(),  // Home sayfa, ayrı widget olmalı
    const Messages(),
    const Schedule(),
    const Insights(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;  // burada final olmaz, sınıf değişkenini güncelle
    });
  }

  final List<String> _titles = ["Home", "Messages", "Schedule", "Insights"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(_titles[_selectedIndex]),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color.fromRGBO(194, 95, 134, 1),  // Seçilen ikonun rengi burada
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed, // 4 ve üzeri sekme için
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: 'Schedule'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp), label: 'Insights'),
        ],
      ),
    );
  }
}
