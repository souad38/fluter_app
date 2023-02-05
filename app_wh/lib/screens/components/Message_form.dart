import 'package:app_wh/modules/Message.dart';
import 'package:flutter/material.dart';
import 'package:app_wh/providers/Message_provider.dart';
import 'package:provider/provider.dart';

 class MessageForm extends StatefulWidget {
   const MessageForm({Key? key}) : super(key: key);

   @override
   State<MessageForm> createState() => _MessageFormState();
 }

 class _MessageFormState extends State<MessageForm> {

   final _formkey=GlobalKey <FormState>();
   final _messageTitle=TextEditingController();

   @override
   Widget build(BuildContext context) {
     return AlertDialog(
       content:Stack(
         clipBehavior: Clip.none,
         children: [
           Positioned(
             right: -40.0,
               top: -40.0,
               child: CircleAvatar(
                 child: Icon(Icons.close),
                 backgroundColor: Colors.red,
               ),
           ),
           Form(
             key:_formkey,
               child:Column(
                 children: [
                   Padding(
                     padding:EdgeInsets.all(0.0),
                     child: TextFormField(
                     controller:_messageTitle ,
                     decoration:InputDecoration(hintText: "add message title ..."),


               )

                     ),
                   Padding(
                      padding:EdgeInsets.all(0.0),
                      child:TextButton(
                        child: Text('add message'),
                        onPressed:(){
                          if(_formkey.currentState!.validate())
                          {
                            Navigator.of(context).pop();
                            context.read<MessageProvider>().addMessage(Message(
                              title:_messageTitle.text,
                              completed: false,
                            ));
                          }


                        },
                      ),
                   ),
     ],
               ),

           )
         ],
       )
     );
   }
 }

