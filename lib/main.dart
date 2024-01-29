import 'package:flutter/material.dart';
import 'package:toggletest/modes/accessibility_mode.dart';
import 'package:toggletest/modes/standard_mode.dart';
import 'package:toggletest/pages/home_page.dart';
import 'package:accessibility_tools/accessibility_tools.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MediaQuery.of(context).accessibleNavigation
          ? accessibilityMode
          : standardMode,
      builder: (context, child) {
        return AccessibilityTools(
          minimumTapAreas: MinimumTapAreas.material,
          checkFontOverflows: true,
          child: child,
        );
      },
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
