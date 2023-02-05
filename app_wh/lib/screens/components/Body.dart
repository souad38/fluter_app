import 'package:app_wh/screens/components/Message_list.dart';
import 'package:app_wh/screens/components/add_message_button.dart';
import 'package:flutter/material.dart';

import 'Welcome.dart';

    class Body extends StatelessWidget {


      @override
      Widget build(BuildContext context) {
        return Column(
          children: [
            Welcome(),
        AddButtonMessage(),
        //    AddMessageButton(),
           MessageList(),
          ],
        );
      }
    }
