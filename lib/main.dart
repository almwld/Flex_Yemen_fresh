import 'package:flutter/material.dart';
import 'package:flex_yemen_fresh/utils/constants.dart';

void main() => runApp(const FlexYemenApp());

class FlexYemenApp extends StatelessWidget {
  const FlexYemenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flex Yemen'),
          backgroundColor: AppColors.primaryGold,
        ),
        body: const Center(
          child: Text('مرحباً بك في Flex Yemen'),
        ),
      ),
    );
  }
}
