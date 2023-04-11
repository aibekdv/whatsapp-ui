import 'package:flutter/material.dart';
import 'package:whatsapp_ui/common/colors.dart';

import 'dart:math' as math;

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 6),
        itemCount: 2,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            contentPadding:
                const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
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
            subtitle: Row(children: [
              Transform.rotate(
                angle: 180 * math.pi / 80,
                child: const Icon(
                  Icons.arrow_downward_sharp,
                  color: Colors.red,
                  size: 14,
                ),
              ),
              const SizedBox(width: 5),
               Text(
                "Today 10:3${index}PM",
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call),
              color: primary,
              splashRadius: 25,
            ),
          );
        },
      ),
    );
  }
}
