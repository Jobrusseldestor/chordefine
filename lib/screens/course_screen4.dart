import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CourseScreen4 extends StatefulWidget {
  const CourseScreen4({Key? key}) : super(key: key);

  @override
  _CourseScreen4State createState() => _CourseScreen4State();
}

class _CourseScreen4State extends State<CourseScreen4> {
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
                          'Tuner',  // Changed to "Tuner"
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () => Navigator.pop(context), // Navigate back
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                // This expanded widget will center the "Tuner" text
                Expanded(
                  child: Center(
                    child: Text(
                      'Tuner',  // Display the "Tuner" text
                      style: Theme.of(context).textTheme.displayMedium,
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
