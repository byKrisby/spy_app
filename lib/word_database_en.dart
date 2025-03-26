import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'isar/word.dart';

class WordDatabaseEN {
  Future<List<Word>> retrieveWordsEN() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final Directory dir = await getApplicationDocumentsDirectory();
    final Isar isar = await Isar.open([WordSchema], directory: dir.path, name: 'wordsEN');

    final bool? firstStart = prefs.getBool('firstStartEN');

    List<Word> wordList = [];

    if (firstStart == null || firstStart == false) {
      wordList = await _getWords();

      await isar.writeTxn(
        () async => await isar.words.putAll(wordList),
      );

      await prefs.setBool('firstStartEN', true);
    }

    await isar.txn(
      () async {
        wordList = await isar.words.where().findAll();
      },
    );

    isar.close();

    return wordList;
  }

  Future<void> addWord({required String category, required String word}) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final Isar isar = await Isar.open([WordSchema], directory: dir.path, name: 'wordsEN');

    await isar.writeTxn(
      () async => await isar.words.put(Word(category: category, word: word)),
    );

    isar.close();
  }

  Future<List<Word>> _getWords() async {
    final FirebaseFirestore db = FirebaseFirestore.instance;
    final docRef = db.collection('database').doc('wordsEN');
    Map<String, dynamic>? words = await docRef.get().then(
          (value) => value.data(),
        );

    List<Word> wordList = [];
    words?.forEach(
      (key, value) => wordList.add(Word(word: key, category: value)),
    );

    return wordList;
  }
}
