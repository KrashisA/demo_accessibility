import 'package:flutter/material.dart';
// import 'package:toggletest/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.displaySmall!.fontSize,
          ),
        ),
        centerTitle: true,
      ),
      // drawer: MyDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  semanticLabel: 'Message icons',
                  size: Theme.of(context).iconTheme.size,
                ),
              ),
            ),
            Semantics(
              label: 'text',
              onTapHint: 'Dont press it.',
              child: Text(
                "Accessible => ${MediaQuery.of(context).accessibleNavigation.toString()}",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
