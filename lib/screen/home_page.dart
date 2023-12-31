import 'package:flutter/material.dart';
import 'package:navigation/router/name_route.dart';
import 'package:navigation/screen/second/page_args/second_page_args.dart';
import 'package:navigation/screen/second/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (_) => SecondPage()));
            Navigator.pushNamed(context, Routes.second, arguments: SecondPageArguments(age: 12, name: 'Ibrohimbek'));
          },
          child: const Text('Next'),
        ),
      ),
    );
  }
}
