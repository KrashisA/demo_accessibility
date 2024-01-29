import 'package:flutter/material.dart';
import 'package:toggletest/pages/setting_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),

          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingPage()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blueGrey.shade100,
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              child: Text("Settings"),
            ),
          )
        ],
      ),
    );
  }
}
