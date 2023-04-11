import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/pages/pages.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double orjWidth = MediaQuery.of(context).size.width;
    double peopleWidth = orjWidth / 24;
    double tabWidth = (orjWidth - peopleWidth) / 5;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              splashRadius: 23,
              tooltip: "Camera",
              icon: const Icon(Icons.camera_alt_outlined),
            ),
            IconButton(
              onPressed: () {},
              splashRadius: 23,
              tooltip: "Search",
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              splashRadius: 23,
              tooltip: "More",
              icon: const Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(
              isScrollable: true,
              labelPadding: EdgeInsets.symmetric(
                horizontal: (orjWidth - (peopleWidth + tabWidth * 3)) / 8,
              ),
              tabs: [
                SizedBox(
                  width: peopleWidth,
                  child: const Tab(
                    icon: Icon(Icons.groups_3_rounded),
                  ),
                ),
                SizedBox(
                  width: tabWidth,
                  child: const Tab(
                    text: "Chats",
                  ),
                ),
                SizedBox(
                  width: tabWidth,
                  child: const Tab(
                    text: "Status",
                  ),
                ),
                SizedBox(
                  width: tabWidth,
                  child: const Tab(
                    text: "Calls",
                  ),
                ),
              ]),
        ),
        body: const TabBarView(children: [
          PeoplePage(),
          ChatsPage(),
          StatusPage(),
          CallsPage(),
        ]),
      ),
    );
  }
}
