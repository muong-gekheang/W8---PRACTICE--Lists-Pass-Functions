import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  final ValueChanged<bool> onChanged; // what is a ValueChanged data type?
  final bool active;
  const WelcomeScreen({super.key, this.active = false, required this.onChanged});

  void handleTap(){
    onChanged(!active);
  }

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool startToConvertIsClicked = false;

  void convertIsClicked(){
    setState(() {
      widget.onChanged(!widget.active);
      print("The button is clcked");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Icon(
            Icons.thermostat_outlined,
            size: 120,
            color: Colors.white,
          ),
        ),
        const Text(
          "Welcome !",
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
          ),
        ),
        const SizedBox(height: 15),
        OutlinedButton(
          onPressed: convertIsClicked,
          style: OutlinedButton.styleFrom(
              side: const BorderSide(width: 1.0, color: Colors.white)),
          child: 
              Text('Start to convert',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
          )
        )
      ],
    ));
  }
}

