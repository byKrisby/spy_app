import 'package:flutter/material.dart';
import 'package:spy/paddings.dart';
import 'package:spy/widget_extension.dart';

Widget howToPlay = RichText(
  text: const TextSpan(
    style: TextStyle(
      fontSize: 16.0,
      color: Colors.white, // Standardfarbe des Textes
    ),
    children: [
      TextSpan(text: 'Spieleranzahl und Spionanzahl einstellen:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: '\t Wähle die Anzahl der Spieler.\n'),
      TextSpan(text: '\t Wähle die Anzahl der Spione (normalerweise 1 Spion für 3-6 Spieler).\n\n'),
      TextSpan(text: 'Karten erstellen:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(
          text:
              '\t Die App generiert automatisch Wortkarten für die Spieler und Spionkarten entsprechend der gewählten Anzahl.\n\n'),
      TextSpan(text: 'Spielablauf\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: 'Kartenausgabe:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: 'Gebt das Handy reihum weiter.\n'),
      TextSpan(
          text:
              'Jeder Spieler tippt auf seine Karte auf dem Bildschirm, schaut sich das Wort an und wischt dann die Karte weg.\n'),
      TextSpan(text: '- Wortkarte: Der Spieler sieht das geheime Wort.\n'),
      TextSpan(text: '- Spionkarte: Der Spieler sieht nur "Spion" und kennt das geheime Wort nicht.\n\n'),
      TextSpan(text: 'Fragen stellen:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: 'Wähle einen Startspieler aus.\n'),
      TextSpan(
          text:
              'Der Startspieler stellt einem anderen Spieler eine Frage, die sich auf das geheime Wort beziehen könnte, ohne es direkt zu nennen.\n'),
      TextSpan(
          text:
              'Der befragte Spieler antwortet und stellt dann einem anderen Spieler eine Frage. Dies geht reihum weiter.\n'),
      TextSpan(
          text:
              'Beispiel: Wenn das geheime Wort "Krankenhaus" ist, könnte eine Frage sein: "Wie oft bist du hier?"\n\n'),
      TextSpan(text: 'Ziel der Spieler:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(
          text:
              '- Nicht-Spione: Versuchen, durch geschickte Fragen und Antworten den Spion zu identifizieren, ohne das geheime Wort direkt zu verraten.\n'),
      TextSpan(text: '- Spion: Versucht, anhand der Fragen und Antworten das geheime Wort herauszufinden.\n\n'),
      TextSpan(text: 'Spielende:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: 'Das Spiel endet, wenn:\n'),
      TextSpan(text: '- Ein Spieler den Spion verdächtigt und die Mehrheit der Spieler zustimmt.\n'),
      TextSpan(text: '- Der Spion sich entscheidet zu raten und das geheime Wort korrekt benennt.\n'),
      TextSpan(text: '- Der Timer der App abläuft (standardmäßig auf 3 Minuten eingestellt).\n\n'),
      TextSpan(text: 'Auflösung\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: 'Spion erraten:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: '- Wenn der Spion korrekt erraten wird, gewinnen die Nicht-Spione.\n'),
      TextSpan(text: '- Wenn der Spion nicht korrekt erraten wird, gewinnt der Spion.\n\n'),
      TextSpan(text: 'Spion benennt den Ort:\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: '- Wenn der Spion das geheime Wort errät, gewinnt der Spion.\n'),
      TextSpan(text: '- Wenn der Spion falsch rät, gewinnen die Nicht-Spione.\n\n'),
      TextSpan(text: 'Tipps für den Erfolg\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(
          text:
              '- Für Nicht-Spione: Geben Sie vage, aber plausible Antworten, die das Wort nicht direkt verraten, aber andere Nicht-Spione erkennen lassen, dass Sie kein Spion sind.\n'),
      TextSpan(
          text:
              '- Für den Spion: Achten Sie genau auf die Fragen und Antworten, um Hinweise auf das geheime Wort zu sammeln. Stellen Sie allgemeine Fragen, die nicht verdächtig wirken.\n\n'),
      TextSpan(text: 'Viel Spaß beim Spielen!'),
    ],
  ),
).withPadding(Paddings.large);
