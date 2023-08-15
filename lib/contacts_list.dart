import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/chat_screen.dart';
import 'info.dart';

class ContactsList extends StatefulWidget {
  const ContactsList({super.key});

  @override
  State<ContactsList> createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context,index){

        return Padding(
          padding: const EdgeInsets.only(bottom:15.0),
          child: ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=>ChatScreen()));
            },

            title: Text(
              info[index]['name'].toString(),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                info[index]['message'].toString(),
                style: TextStyle(
                  fontSize: 15,
              ),
              ),

            ),
            leading:CircleAvatar(
              backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
              radius: 30,
            ),
            trailing: Text(
              info[index]['time'].toString(),
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        );

      }
      ),
    );
  }
}
