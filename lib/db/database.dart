import 'dart:async';
import 'dart:io';
import 'package:moor/ffi.dart';
import 'package:path/path.dart' as p;

import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

class Words extends Table{
  TextColumn get strQuerstion =>text()();
  TextColumn get strAnswer =>text()();

  @override
  Set<Column> get primaryKey => {strQuerstion};
}


@UseMoor(tables: [Words])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;


  // Create
  Future addWord(Word word) => into(words).insert(word);

  //Read
  Future<List<Word>> get allWords => select(words).get();

  //Update
  Future updateWWord(Word word) => update(words).replace(word);

  //Delete
  Future deleteWord(Word word) => (delete(words)
        ..where((tbl) => tbl.strQuerstion.equals(word.strQuerstion)))
      .go();
}



LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'words.db'));
    return VmDatabase(file);
  });
}