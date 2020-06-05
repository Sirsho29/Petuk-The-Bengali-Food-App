import 'package:flutter/material.dart';

class ImageEnlargeScreen extends StatelessWidget {
  static const routeName = '/image-enlarge';

  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final imageUrl = routeArg['imageUrl'];
    //final title = routeArg['title'];

    return GestureDetector(
      onVerticalDragUpdate: Navigator.of(context).pop,
          child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          label: Text('Back'),
          onPressed: () =>Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios,size: 30,),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            width: double.infinity,
            height: 300,
            child: Image.asset(imageUrl,fit: BoxFit.cover,),
          )
        ),
      ),
    );
  }
}
