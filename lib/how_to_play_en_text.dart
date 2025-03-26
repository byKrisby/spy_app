import 'package:flutter/material.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';

Widget howToPlayEN = RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16.0,
      height: 1.5,
      color: Colors.white, // Standard text color
    ),
    children: [
      TextSpan(text: 'Setting Player and Spy Numbers:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: 'Select the number of players.\n'),
      TextSpan(text: 'Select the number of spies (usually 1 spy for 3-6 players).\n\n'),
      TextSpan(text: 'Creating Cards:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(
          text:
              'The app automatically generates word cards for the players and spy cards according to the selected numbers.\n\n'),
      TextSpan(text: 'Game Flow\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: 'Card Distribution:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: 'Pass the phone around.\n'),
      TextSpan(
          text: 'Each player taps on their card on the screen, looks at the word, and then swipes the card away.\n'),
      TextSpan(text: '- Word Card: The player sees the secret word.\n'),
      TextSpan(text: '- Spy Card: The player sees only "Spy" and does not know the secret word.\n\n'),
      TextSpan(text: 'Asking Questions:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: 'Choose a starting player.\n'),
      TextSpan(
          text:
              'The starting player asks another player a question that might relate to the secret word without directly naming it.\n'),
      TextSpan(
          text: 'The questioned player answers and then asks another player a question. This continues in turn.\n'),
      TextSpan(text: 'Example: If the secret word is "Hospital," a question could be, "How often are you here?"\n\n'),
      TextSpan(text: 'Player Goals:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(
          text:
              '- Non-spies: Try to identify the spy through clever questions and answers without revealing the secret word.\n'),
      TextSpan(text: '- Spy: Tries to figure out the secret word based on the questions and answers.\n\n'),
      TextSpan(text: 'End of the Game:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: 'The game ends when:\n'),
      TextSpan(text: '- A player suspects the spy and the majority agrees.\n'),
      TextSpan(text: '- The spy decides to guess and correctly names the secret word.\n'),
      TextSpan(text: '- The app timer runs out (set to 3 minutes by default).\n\n'),
      TextSpan(text: 'Resolution\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: 'Guessing the Spy:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: '- If the spy is correctly guessed, the non-spies win.\n'),
      TextSpan(text: '- If the spy is not correctly guessed, the spy wins.\n\n'),
      TextSpan(text: 'Spy Names the Word:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: '- If the spy guesses the secret word, the spy wins.\n'),
      TextSpan(text: '- If the spy guesses wrong, the non-spies win.\n\n'),
      TextSpan(text: 'Tips for Success\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(
          text:
              '- For Non-spies: Give vague but plausible answers that do not directly reveal the word but let other non-spies recognize that you are not the spy.\n'),
      TextSpan(
          text:
              '- For the Spy: Pay close attention to the questions and answers to gather clues about the secret word. Ask general questions that do not seem suspicious.\n\n'),
      TextSpan(text: 'Have fun playing!'),
    ],
  ),
).withPadding(Paddings.large);
