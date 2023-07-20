import 'package:flutter/material.dart';
import 'package:rock_school_manager_frontend/screens/calendar_screen.dart';
import 'package:rock_school_manager_frontend/screens/dashboard_screen.dart';
import 'package:rock_school_manager_frontend/screens/profile_screen.dart';

class NavScreen extends StatefulWidget {
  static const String id = '/nav_screen';

  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final menuItems = const <MenuItem>[
    MenuItem(Icons.home, "Home"),
    MenuItem(Icons.calendar_month, "Calendar"),
    MenuItem(Icons.person, "Profile")
  ];

  int index = 0;
  final _buildBody = const <Widget>[DashboardScreen(), CalendarScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (x) {
          setState(() {
            index = x;
          });
        },
        unselectedItemColor: Colors.black45,
        selectedItemColor: Colors.orange,
        items: menuItems.map((MenuItem e) =>
            BottomNavigationBarItem(icon: Icon(e.iconData), label: e.text)).toList(),
      ),
      body: _buildBody[index],
    );
  }
}

class MenuItem {
  const MenuItem(this.iconData, this.text);

  final IconData iconData;
  final String text;
}
