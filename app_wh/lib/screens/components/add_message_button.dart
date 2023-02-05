import 'package:flutter/material.dart';
import 'Message_form.dart';
import 'Welcome.dart';

class AddButtonMessage extends StatelessWidget {
  const AddButtonMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () => showDialog(
          
            builder: ( BuildContext context){
              return MessageForm();
            }, context: context,

        ),
      child: Icon(Icons.add),
      backgroundColor:Colors.deepPurple,
    );
  }
}
