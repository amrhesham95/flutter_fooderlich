import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final theme = FooderlichTheme.light();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Fooderlich',
      theme: theme,
      home: MyHomePage(title: 'Fooderlich', theme: theme),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final ThemeData theme;
  MyHomePage({Key? key, required this.title, required this.theme}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.blue)
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title, style: widget.theme.textTheme.headline6,),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: createBottomNavigation(createBarItems()),
    );
  }

  List<BottomNavigationBarItem> createBarItems() {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: "Card1"),
      BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: "Card2"),
      BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: "Card3")];
  }

  Widget createBottomNavigation(List<BottomNavigationBarItem> items) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: widget.theme.textSelectionTheme.selectionColor,
    items: items);
  }
}


