import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/App_drawer.dart';
import 'components/Body.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('application '),
        actions: [
          PopupMenuButton(
           icon: Icon(
            Icons.more_vert,
           ),
          itemBuilder: (_) =>[
            PopupMenuItem(
            child: Text('login'),


          ),
            PopupMenuItem(
              child: Text('registre'),


            )
          ],

        )
        ],
      ),
      body: Body(),
      drawer: AppDrawer(),
    );
  }
}
