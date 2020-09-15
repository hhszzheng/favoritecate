import 'package:favorcate/ui/pages/main/initialize_items.dart';
import 'package:flutter/material.dart';

class YFMainScreen extends StatefulWidget {

  static const String routeName = '/';

  @override
  _YFMainScreenState createState() => _YFMainScreenState();
}

class _YFMainScreenState extends State<YFMainScreen> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index:_currentIndex ,
        children: pages
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: items,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
