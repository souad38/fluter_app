import 'dart:js';
import 'package:app_wh/providers/Message_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MessageList extends StatelessWidget {
  const MessageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messageProvider=context.watch<MessageProvider>();

    return Expanded(

      child: Container(
      child: Center(
        child: ListView.builder(
          itemCount:messageProvider.Messages.length ,
          itemBuilder: (context,index){
            return Dismissible(
              key: Key(index.toString()),
              background:Container(
                color:Theme.of(context).errorColor,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 40,
                ),
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 20),
              ),
              direction: DismissDirection.endToStart,
              onDismissed:(direction){
                messageProvider.removeMessage(index);
              },
              child: ListTile(
                title: Text(messageProvider.Messages[index].title),
                trailing:Image(
                  image: messageProvider.Messages[index].completed
                      ?AssetImage('assets/icons/')
                      : AssetImage('assets/icons/completed.png'),
                ),
                onTap: (){
                  messageProvider.makeMessagComplated(index);
                },
              ),
            );
          },

        ),
      ),
    ),
          flex: 5,
    );
  }
}
