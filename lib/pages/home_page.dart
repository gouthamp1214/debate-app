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
            Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/cover.jpg'),
                      ),
                    ),
                    child: Text(
                      'Side menu',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.input),
                    title: const Text('Welcome'),
                    onTap: () => {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.verified_user),
                    title: const Text('Profile'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    leading: const Icon(Icons.border_color),
                    title: const Text('Feedback'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    leading: const Icon(Icons.exit_to_app),
                    title: const Text('Logout'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                ],
              ),
            );
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

      //body section
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
