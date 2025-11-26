import 'package:flutter/material.dart';
import 'package:w7_lab/EXERCISE-4/favorite_card.dart';
import 'package:w7_lab/EXERCISE-4/jokes.dart';

Color appColor = Colors.green[300] as Color;

void main() => runApp(JokeApp());


class JokeApp extends StatefulWidget {
  const JokeApp({super.key});

  @override
  State<JokeApp> createState() => _JokeAppState();
}

class _JokeAppState extends State<JokeApp> {
  int selectedIndex = -1;

  void cardIsSelected(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: appColor,
          title: const Text("Favorite Jokes"),
        ),
        body: ListView(
          children: [
            for(int i = 0; i < jokeCards.length; i++)
              FavoriteCard(
                title: jokeCards[i].title, 
                description: jokeCards[i].description,
                isFavorite: selectedIndex == i,
                onChanged: (_) => cardIsSelected(i), 
                )
          ],
        )
      ),
    );
  }
}