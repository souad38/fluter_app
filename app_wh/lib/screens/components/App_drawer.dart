import 'package:flutter/material.dart';

class  AppDrawer extends StatelessWidget {
  //const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: Column(
    children: [
      AppBar(
      title: Text('menu'),
      ),
      ListTile(
        leading: Icon(Icons.calendar_today),
        title: Text('calander'),
        onTap: (){},
      ),
      Divider(
        height:20 ,
      thickness: 5,
      ),
      ListTile(
        leading: Icon(Icons.alarm),
        title: Text('alarm'),
        onTap: (){},
      ),
  ],
    ),
    );
  }
}
