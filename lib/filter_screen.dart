import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {

  static const routeName = './filter-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
          title: Text(
            'পেটুক',
            style: TextStyle(
                fontFamily: 'Cholontika', fontSize: 40, color: Colors.black54),
          ),
          backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text('Your Filters...'),
      ),
      
    );
  }
}