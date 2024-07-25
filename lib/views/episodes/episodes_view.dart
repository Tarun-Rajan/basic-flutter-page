import 'package:flutter/material.dart';

class EpisodesView extends StatelessWidget {
  const EpisodesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Background color changed to white
      child: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center the column vertically
          children: [
            SizedBox(height: 20), // Add some space at the top
            ElevatedButton(
              child: Text('course 1'),
              onPressed: () {}, // Add button press handler
            ),
            SizedBox(height: 20), // Add space between buttons
            ElevatedButton(
              child: Text('course 2'),
              onPressed: () {}, // Add button press handler
            ),
            SizedBox(height: 20), // Add space between buttons
            ElevatedButton(
              child: Text('course 3'),
              onPressed: () {}, // Add button press handler
            ),
          ],
        ),
      ),
    );
  }
}
