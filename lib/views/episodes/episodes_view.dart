import 'package:flutter/material.dart';

const double _buttonSpacing = 20;

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
            SizedBox(height: _buttonSpacing), // Add some space at the top
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20), // Increase button padding
                textStyle: TextStyle(fontSize: 24), // Increase text size
              ),
              child: Text('course 1'),
              onPressed: () {}, // Add button press handler
            ),
            SizedBox(height: _buttonSpacing), // Add space between buttons
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20), // Increase button padding
                textStyle: TextStyle(fontSize: 24), // Increase text size
              ),
              child: Text('course 2'),
              onPressed: () {}, // Add button press handler
            ),
            SizedBox(height: _buttonSpacing), // Add space between buttons
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20), // Increase button padding
                textStyle: TextStyle(fontSize: 24), // Increase text size
              ),
              child: Text('course 3'),
              onPressed: () {}, // Add button press handler
            ),
          ],
        ),
      ),
    );
  }
}
