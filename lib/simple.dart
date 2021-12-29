import 'package:flutter/material.dart';

class SimpleScreen extends StatelessWidget {
  final String tabName;
  final int screenNumber;

  const SimpleScreen({
    Key? key,
    required this.tabName,
    this.screenNumber = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Tab: $tabName Screen: $screenNumber',
            style: Theme.of(context).textTheme.headline4,
          ),
          ElevatedButton(
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SimpleScreen(
                          tabName: tabName, screenNumber: screenNumber + 1),
                    ),
                  ),
              child: Text('Click me'))
        ],
      ),
    );
  }
}
