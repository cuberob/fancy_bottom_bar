# Example App


```dart
import 'package:fancy_bottom_bar/fancy_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    Key key,
  }) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int selectedPos = 0;

  final tabItems = [
    FancyBottomItem(title: Text("Home"), icon: Icon(Icons.home)),
    FancyBottomItem(title: Text("Connect"), icon: Icon(Icons.usb)),
    FancyBottomItem(title: Text("Profile"), icon: Icon(Icons.person)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FancyBottomBar(
        onItemSelected: (i) => setState(() => selectedPos = i),
        items: tabItems,
        selectedPosition: selectedPos,
        selectedColor: Colors.amber,
        indicatorColor: Colors.deepPurple,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.orange.shade100,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Check out what's happening below!"),
            SizedBox(height: 32),
            tabItems[selectedPos].icon
          ],
        ),
      ),
    );
  }
}
```