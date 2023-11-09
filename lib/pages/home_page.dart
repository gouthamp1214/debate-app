import 'package:debate_app/pages/chat_page.dart';
import 'package:debate_app/pages/account_page.dart';
import 'package:debate_app/pages/debate_page.dart';
import 'package:debate_app/pages/plus_one_page.dart';
import 'package:debate_app/pages/settings_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ChatPage(),
    const PlusOnePage(),
    const AccountPage(),
    const SettingsPage(),
    DebateScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: const Text('Debate & Discussion'),
        leading: IconButton(
          onPressed: () {
            // open menu tab
          },
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // share page
            },
            icon: const Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {
              // profile page
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.plus_one),
            label: 'plus one',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
          ),
        ],
      ),
    );
  }
}
