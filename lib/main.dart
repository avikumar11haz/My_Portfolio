import 'package:flutter/material.dart';
import 'package:my_portfolio/views/home_page.dart';
import 'package:my_portfolio/views/main_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final PageStorageBucket bucket = PageStorageBucket();
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      // home: PageStorage(
      //   bucket: bucket,
      //   child: const HomePage(),
      // ),
      home: const HomePage(),
    );
  }
}


