import 'package:flutter/material.dart';
import 'package:navigation/router/name_route.dart';

class ThirdPAge extends StatefulWidget {
  final String name;
  const ThirdPAge({super.key, required this.name});

  @override
  State<ThirdPAge> createState() => _ThirdPAgeState();
}

class _ThirdPAgeState extends State<ThirdPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              widget.name,
              style: const TextStyle(fontSize: 32),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) => HomePage(),
                //   ),
                // );
                Navigator.pushReplacementNamed(
                  context,
                  Routes.home,
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
