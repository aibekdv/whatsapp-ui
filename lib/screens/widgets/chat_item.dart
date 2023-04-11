import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/widgets/chat_user.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const ChatUser()));
      },
      leading: const CircleAvatar(
        radius: 25,
        backgroundColor: Colors.grey,
        backgroundImage: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzcIYu2wOSvJDAopRHD9KBe75YVOShWHf7GQ&usqp=CAU"),
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 6.0),
        child: Text(
          "Username $index",
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      subtitle: const Text(
        "Last message ...",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: const Text(
        "10:24",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}
