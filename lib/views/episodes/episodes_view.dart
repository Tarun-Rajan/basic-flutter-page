import 'package:flutter/material.dart';

const double _buttonSpacing = 20;

class EpisodesView extends StatefulWidget {
  @override
  _EpisodesViewState createState() => _EpisodesViewState();
}

class _EpisodesViewState extends State<EpisodesView> {
  String _selectedCourse = ''; // Add this variable to store the selected course

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
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20), // Increase button padding
                        textStyle:
                            TextStyle(fontSize: 24), // Increase text size
                        backgroundColor: Colors
                            .purple[200], // Change button color to light purple
                      ),
                      child: Text('Course 1'),
                      onPressed: () {
                        setState(() {
                          _selectedCourse = 'Course 1';
                        });
                      }, // Add button press handler
                    ),
                  ),
                  SizedBox(width: 20), // Add space between button and text
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _selectedCourse == 'Course 1'
                              ? 'This is Course 1. Learn the basics of programming.'
                              : '',
                          style: TextStyle(fontSize: 18),
                        ),
                        _selectedCourse == 'Course 1'
                            ? ElevatedButton(
                                onPressed: () {
                                  // Add enroll button press handler
                                  print('Enrolled in Course 1');
                                },
                                child: Text('Enroll'),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: _buttonSpacing), // Add space between buttons
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20), // Increase button padding
                        textStyle:
                            TextStyle(fontSize: 24), // Increase text size
                        backgroundColor: Colors
                            .purple[200], // Change button color to light purple
                      ),
                      child: Text('Course 2'),
                      onPressed: () {
                        setState(() {
                          _selectedCourse = 'Course 2';
                        });
                      }, // Add button press handler
                    ),
                  ),
                  SizedBox(width: 20), // Add space between button and text
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _selectedCourse == 'Course 2'
                              ? 'This is Course 2. Learn advanced programming concepts.'
                              : '',
                          style: TextStyle(fontSize: 18),
                        ),
                        _selectedCourse == 'Course 2'
                            ? ElevatedButton(
                                onPressed: () {
                                  // Add enroll button press handler
                                  print('Enrolled in Course 2');
                                },
                                child: Text('Enroll'),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: _buttonSpacing), // Add space between buttons
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20), // Increase button padding
                        textStyle:
                            TextStyle(fontSize: 24), // Increase text size
                        backgroundColor: Colors
                            .purple[200], // Change button color to light purple
                      ),
                      child: Text('Course 3'),
                      onPressed: () {
                        setState(() {
                          _selectedCourse = 'Course 3';
                        });
                      }, // Add button press handler
                    ),
                  ),
                  SizedBox(width: 20), // Add space between button and text
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _selectedCourse == 'Course 3'
                              ? 'This is Course 3. Learn specialized programming skills.'
                              : '',
                          style: TextStyle(fontSize: 18),
                        ),
                        _selectedCourse == 'Course 3'
                            ? ElevatedButton(
                                onPressed: () {
                                  // Add enroll button press handler
                                  print('Enrolled in Course 3');
                                },
                                child: Text('Enroll'),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
