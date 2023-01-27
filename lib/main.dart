import 'package:flutter/material.dart';
import 'package:flutter_example/home_page.dart';

MaterialApp main() {
  runApp(const MyApp());
	
    return const MaterialApp(
      title: 'Flutter Examples',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
