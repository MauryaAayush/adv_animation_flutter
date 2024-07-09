import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/game_provider.dart';
import 'Components/letter_container.dart';

class HomeScreen extends StatelessWidget {
  final List<String> upperCaseLetters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I'];
  final List<String> lowerCaseLetters = ['b', 'i', 'a', 'f', 'c', 'd', 'e', 'g', 'h'];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Match The Following'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Column of draggable uppercase letters
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: upperCaseLetters.map((letter) {
                return Draggable<String>(
                  data: letter,
                  child: Consumer<MatchGameProvider>(
                    builder: (context, provider, child) {
                      return LetterContainer(
                        letter: provider.matchedLetters[letter] == true ? '✓' : letter,
                        color: Colors.tealAccent,
                      );
                    },
                  ),
                  feedback: LetterContainer(
                    letter: letter,
                    color: Colors.tealAccent.withOpacity(0.7),
                  ),
                  childWhenDragging: LetterContainer(
                    letter: letter,
                    color: Colors.tealAccent.withOpacity(0.3),
                  ),
                );
              }).toList(),
            ),
            // Column of drag targets for lowercase letters
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: lowerCaseLetters.map((letter) {
                return DragTarget<String>(
                  builder: (context, candidateData, rejectedData) {
                    return LetterContainer(
                      letter: letter,
                      color: Colors.lightBlueAccent,
                    );
                  },
                  onWillAcceptWithDetails: (details) {
                    return details.data.toLowerCase() == letter;
                  },
                  onAcceptWithDetails: (details) {
                    Provider.of<MatchGameProvider>(context, listen: false).markAsMatched(details.data);
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}


