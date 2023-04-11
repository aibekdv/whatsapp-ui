import 'package:flutter/material.dart';
import 'package:whatsapp_ui/common/colors.dart';
import 'package:whatsapp_ui/screens/mobile_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: primary),
      home: const MobileScreenLayout(),
    );
  }
}
