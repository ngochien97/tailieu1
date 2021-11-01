import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'flutter tutorial',
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  void showText() {
    print('lalala');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: showText
            ),
        title: Center(
          child: Text('Hello123'),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: () {
                print('search');
              })
        ],
      ),
      body: Center(
        child: Text('Hello'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
