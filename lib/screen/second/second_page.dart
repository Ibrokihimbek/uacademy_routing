import 'package:flutter/material.dart';
import 'package:navigation/router/name_route.dart';

class SecondPage extends StatefulWidget {
  final String name;
  final int age;
  const SecondPage({
    super.key,
    required this.age,
    required this.name,
  });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${widget.name} ${widget.age}',
              style: const TextStyle(fontSize: 32),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (_) => ThirdPAge()));
                Navigator.pushNamed(
                  context,
                  Routes.third,
                  arguments: 'Ibrohimbek',
                );
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
