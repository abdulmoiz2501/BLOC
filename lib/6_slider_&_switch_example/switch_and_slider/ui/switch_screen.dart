import 'package:flutter/material.dart';


class SwitchScreen extends StatelessWidget {
  const SwitchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Switch App')),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Notifications'),
                Switch(
                  value: true,
                  onChanged: (newValue) {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 200,
              color: Colors.red.withOpacity(0.2),
            ),
            const SizedBox(height: 50),
            Slider(value: 0.4, onChanged: (value){})
          ],
        ),
      ),
    );
  }
}
