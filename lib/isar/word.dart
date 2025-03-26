import 'package:isar/isar.dart';

part 'word.g.dart';

@collection
class Word {
  Word({
    this.word,
    this.category,
  });
  Id id = Isar.autoIncrement;

  String? word;

  String? category;
}
