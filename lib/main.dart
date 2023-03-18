import 'package:flutter/material.dart';

// Simple Navigation Bar Using StatelessWidget
class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          const IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigation Bar',
              onPressed: null),
          Expanded(child: title),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: 'Search Bar',
          )
        ],
      ),
    );
  }
}

// Create My Scaffold page : and a scaffold page is a piece of paper where the UI appears using Material

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        MyAppBar(
            title: Text(
          'Hello From Initial App Bar',
          style: Theme.of(context).primaryTextTheme.titleLarge,
        )),
        const Expanded(
            child: Center(
          child: Text('Welcome to my Initial Application'),
        ))
      ]),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    title: 'MY INITIAL APP',
    home: SafeArea(child: MyScaffold()),
  ));
}
