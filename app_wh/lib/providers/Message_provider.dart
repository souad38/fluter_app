import 'package:app_wh/modules/Message.dart';
import 'package:flutter/material.dart';

class MessageProvider extends ChangeNotifier{
  List<Message> _Messages=[
    Message(
        title:'3id mobarak sa3id',
        completed: false,
    )
  ];
  List<Message> get Messages{
    return _Messages;
  }
  void addMessage(Message){
    _Messages.add(Message);
    notifyListeners();
  }
  void removeMessage(index){
    _Messages.removeAt(index);
    notifyListeners();
  }
void makeMessagComplated(index){
    _Messages[index].completed=!_Messages[index].completed;
    notifyListeners();
}
}