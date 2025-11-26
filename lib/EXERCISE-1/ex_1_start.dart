import 'package:flutter/material.dart';

List<String> colors = ["red", "blue", "green"];

List<Widget> getColors(){
  return colors.map((color) => Text(color, style: TextStyle(fontWeight: FontWeight.bold),)).toList();
}
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Label("Method 1: Loop in Array", bold: true),
              // TODO
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for(int i = 0; i < colors.length; i++)
                    Label(colors[i], bold: true,)
                ],

                
              ),
              Label("Method 2: Map", bold: true),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...colors.map((color) => Label(color, bold: true,))
                ]
              ,),
              Label("Method 3: Dedicated Function", bold: true),
              // TODO
              ...getColors()
            ],
          ),
        ),
      ),
    ),
  );
}

class Label extends StatelessWidget {
  const Label(this.text, {super.key, this.bold = false});

  final bool bold;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: (bold ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }
}
