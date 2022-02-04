import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () => Navigator.of(context).pop,
                icon: const Icon(Icons.arrow_back),
              ),
            ),
          ),
          const Center(
            child: Text('About any ...'),
          ),
        ],
      ),
    );
  }
}
