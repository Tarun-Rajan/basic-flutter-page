import 'package:flutter/material.dart';

const double _buttonSpacing = 20;

class EpisodesView extends StatelessWidget {
  const EpisodesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Episodes'),
        backgroundColor: Colors.purple, // Add a purple app bar
      ),
      body: Container(
        color: Colors.white, // Background color changed to white
        child: Padding(
          padding:
              const EdgeInsets.all(20.0), // Add some padding around the content
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center the column vertically
            children: [
              Text(
                'Select an Episode',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: _buttonSpacing), // Add some space at the top
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20), // Increase button padding
                  textStyle: TextStyle(fontSize: 24), // Increase text size
                  backgroundColor:
                      Colors.white, // Change button color to purple
                ),
                child: Text('Course 1'),
                onPressed: () {}, // Add button press handler
              ),
              SizedBox(height: _buttonSpacing), // Add space between buttons
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20), // Increase button padding
                  textStyle: TextStyle(fontSize: 24), // Increase text size
                  backgroundColor:
                      Colors.white, // Change button color to purple
                ),
                child: Text('Course 2'),
                onPressed: () {}, // Add button press handler
              ),
              SizedBox(height: _buttonSpacing), // Add space between buttons
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20), // Increase button padding
                  textStyle: TextStyle(fontSize: 24), // Increase text size
                  backgroundColor:
                      Colors.white, // Change button color to purple
                ),
                child: Text('Course 3'),
                onPressed: () {}, // Add button press handler
              ),
            ],
          ),
        ),
      ),
    );
  }
}
