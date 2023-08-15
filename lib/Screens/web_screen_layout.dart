import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/contacts_list.dart';
class WebLayoutScreen extends StatelessWidget {
  const WebLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,

        elevation: 0,
        title:Text(
          'Whatsapp',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search),color: Colors.grey,),
          IconButton(onPressed: (){}, icon:Icon(Icons.more_vert),color: Colors.grey,),

        ],
        bottom: TabBar(
          indicatorColor: tabColor,
          indicatorWeight: 4,
          labelColor: tabColor,
          unselectedLabelColor: Colors.grey,

          tabs: [
            new Container(
              height: 45.0,
              child: new Tab(text: 'CHATS'),
            ),
            new Container(
              height: 45.0,
              child: new Tab(text: 'STATUS'),
            ),
            new Container(
              height: 45.0,
              child: new Tab(text: 'CALLS'),
            ),
              ],
            ),


        ),
      body: ContactsList(),

      )
    );


  }
}
