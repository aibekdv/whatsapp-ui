import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/widgets/chat_item.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        padding: const EdgeInsets.symmetric(vertical: 6),
        itemBuilder: (context, index) {
        return ChatItem(index:index+1);
      },),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}
