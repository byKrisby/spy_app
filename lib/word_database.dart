import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'isar/word.dart';

class WordDatabase {
  Future<List<Word>> retrieveWords({String? category}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final Directory dir = await getApplicationDocumentsDirectory();
    final Isar isar = await Isar.open([WordSchema], directory: dir.path, name: 'wordsDE');

    final bool? firstStart = prefs.getBool('firstStart');

    List<Word> wordList = [];

    if (firstStart == null || firstStart == false) {
      wordList = await _getWords();

      await isar.writeTxn(
        () async => await isar.words.putAll(wordList),
      );

      await prefs.setBool('firstStart', true);
    }

    await isar.txn(
      () async {
        if (category != null && category != 'Alle'.tr()) {
          wordList = await isar.words.filter().categoryContains(category).findAll();
        } else {
          wordList = await isar.words.where().findAll();
        }
      },
    );

    isar.close();

    return wordList;
  }

  Future<void> addWord({required String category, required String word}) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final Isar isar = await Isar.open([WordSchema], directory: dir.path, name: 'wordsDE');

    await isar.writeTxn(
      () async => await isar.words.put(Word(category: category, word: word)),
    );

    isar.close();
  }

  Future<List<Word>> _getWords() async {
    final FirebaseFirestore db = FirebaseFirestore.instance;
    final docRef = db.collection('database').doc('wordsDE');
    Map<String, dynamic>? words = await docRef.get().then(
          (value) => value.data(),
        );

    List<Word> wordList = [];
    words?.forEach(
      (key, value) => wordList.add(Word(word: key, category: value)),
    );

    return wordList;
  }

  static Map<String, int> getCategories(List<Word> wordList) {
    List<Word> helpWordList = [...wordList];

    helpWordList.sort(
      (a, b) => a.category!.compareTo(b.category!),
    );
    Map<String, int> kategorienZaehler = {};

    for (var wort in helpWordList) {
      if (kategorienZaehler.containsKey(wort.category)) {
        kategorienZaehler[wort.category!] = kategorienZaehler[wort.category]! + 1;
      } else {
        kategorienZaehler[wort.category!] = 1;
      }
    }
    return kategorienZaehler;
  }
}
