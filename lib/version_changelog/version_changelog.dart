import 'package:cloud_firestore/cloud_firestore.dart';

class VersionChangelog {
  Future<List<String>> getChangelog(String database) async {
    final FirebaseFirestore db = FirebaseFirestore.instance;
    final docRef = db.collection('database').doc('changelog$database');

    Map<String, dynamic>? changelog = await docRef.get().then(
          (value) => value.data(),
        );

    List<String> changelogList = [];

    changelog?.forEach(
      (key, value) => changelogList.add('$key\n$value'),
    );

    return changelogList;
  }
}
