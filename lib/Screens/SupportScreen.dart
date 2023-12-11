import 'package:flutter/cupertino.dart';

import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';

import 'message_screen.dart';


class chatpage extends StatefulWidget {
  const chatpage({Key? key}) : super(key: key);

  @override
  State<chatpage> createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();
  List<Map<String, dynamic>> messages= [];



  @override
  void initState() {
    super.initState();
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:  AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(top:0),
                child: Text('ApnaMart',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 37,
                      color: Colors.brown,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
        ),

        body: Container(
          color: Colors.grey.shade200,
            child: Column(
              children: [
                //Messages which will be coming from MessageScreen
                Expanded(child: MessageScreen(messages: messages)),

                //MyTextFormField
                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 14,vertical:8),
                  color: const Color(0xffCA955C),
                  child: Row(
                    children: [
                      Expanded(
                        child:TextField(
                          cursorColor: Colors.white,
                          controller: _controller,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),

                      //Send Button
                      IconButton(
                          onPressed: (){
                            sendMessage(_controller.text);
                            _controller.clear();
                          }, icon:const  Icon(Icons.send , color: Colors.white,)
                      ),
                    ],
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }

  sendMessage(String text) async {
    if(text.isEmpty){
      print("Message is Empty");
    }else{
      setState(() {
        addMessage(
          Message(text: DialogText(text:[text])),
          true,
        );
      });
      DetectIntentResponse response= await dialogFlowtter.detectIntent(
          queryInput: QueryInput(text:TextInput(text:text)));

      if(response.message ==null){
        return;
      }else {
        setState(() {
          addMessage(response.message!);
        });

      }

    }

  }
  addMessage(Message message, [bool isUserMessage = false]){
    messages.add({"message": message, "isUserMessage": isUserMessage});
  }
}
