import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CourseScreen2 extends StatefulWidget {
  const CourseScreen2({Key? key}) : super(key: key);

  @override
  _CourseScreen2State createState() => _CourseScreen2State();
}

class _CourseScreen2State extends State<CourseScreen2> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        child: Text(
                          'Practice', // The text that will be shown
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () => Navigator.pop(context), // Pops the screen when back arrow is pressed
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Expanded(
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // This will show a basic text pop-up when the button is clicked
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Practice"),
                              content: const Text("This is the Practice screen!"),
                              actions: [
                                TextButton(
                                  child: const Text("Close"),
                                  onPressed: () {
                                    Navigator.of(context).pop(); // Closes the dialog
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: const Text('Practice Guitar Chord and Audio'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
