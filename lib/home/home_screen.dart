// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:todo_chat/chat/chat_screen.dart';
import 'package:todo_chat/todo/todo_screen.dart';

class HomeScreen extends StatefulWidget {
  static String url = "/";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;

  final List<Widget> _screens = const [TodoScreen(), ChatScreen()];

  void _onItemTapped(int index) {
    setState(() {
      _page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        color: Colors.white,
        width: 300,
      ),
      appBar: AppBar(
        leading: const Icon(
          LineIcons.bars,
          color: Colors.white,
        ),
        backgroundColor: Colors.pink,
        title: const Text(
          "DoChat",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _screens[_page],
      floatingActionButton: const Icon(LineIcons.plusCircle),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(LineIcons.edit), label: 'TODO'),
          BottomNavigationBarItem(
              icon: Icon(LineIcons.facebookMessenger), label: 'Chat'),
        ],
        currentIndex: _page,
        selectedItemColor: Colors.pink,
        onTap: _onItemTapped,
      ),
    );
  }
}
