// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Word extends DataClass implements Insertable<Word> {
  final String strQuerstion;
  final String strAnswer;
  Word({@required this.strQuerstion, @required this.strAnswer});
  factory Word.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return Word(
      strQuerstion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_querstion']),
      strAnswer: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}str_answer']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || strQuerstion != null) {
      map['str_querstion'] = Variable<String>(strQuerstion);
    }
    if (!nullToAbsent || strAnswer != null) {
      map['str_answer'] = Variable<String>(strAnswer);
    }
    return map;
  }

  WordsCompanion toCompanion(bool nullToAbsent) {
    return WordsCompanion(
      strQuerstion: strQuerstion == null && nullToAbsent
          ? const Value.absent()
          : Value(strQuerstion),
      strAnswer: strAnswer == null && nullToAbsent
          ? const Value.absent()
          : Value(strAnswer),
    );
  }

  factory Word.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Word(
      strQuerstion: serializer.fromJson<String>(json['strQuerstion']),
      strAnswer: serializer.fromJson<String>(json['strAnswer']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'strQuerstion': serializer.toJson<String>(strQuerstion),
      'strAnswer': serializer.toJson<String>(strAnswer),
    };
  }

  Word copyWith({String strQuerstion, String strAnswer}) => Word(
        strQuerstion: strQuerstion ?? this.strQuerstion,
        strAnswer: strAnswer ?? this.strAnswer,
      );
  @override
  String toString() {
    return (StringBuffer('Word(')
          ..write('strQuerstion: $strQuerstion, ')
          ..write('strAnswer: $strAnswer')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(strQuerstion.hashCode, strAnswer.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Word &&
          other.strQuerstion == this.strQuerstion &&
          other.strAnswer == this.strAnswer);
}

class WordsCompanion extends UpdateCompanion<Word> {
  final Value<String> strQuerstion;
  final Value<String> strAnswer;
  const WordsCompanion({
    this.strQuerstion = const Value.absent(),
    this.strAnswer = const Value.absent(),
  });
  WordsCompanion.insert({
    @required String strQuerstion,
    @required String strAnswer,
  })  : strQuerstion = Value(strQuerstion),
        strAnswer = Value(strAnswer);
  static Insertable<Word> custom({
    Expression<String> strQuerstion,
    Expression<String> strAnswer,
  }) {
    return RawValuesInsertable({
      if (strQuerstion != null) 'str_querstion': strQuerstion,
      if (strAnswer != null) 'str_answer': strAnswer,
    });
  }

  WordsCompanion copyWith(
      {Value<String> strQuerstion, Value<String> strAnswer}) {
    return WordsCompanion(
      strQuerstion: strQuerstion ?? this.strQuerstion,
      strAnswer: strAnswer ?? this.strAnswer,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (strQuerstion.present) {
      map['str_querstion'] = Variable<String>(strQuerstion.value);
    }
    if (strAnswer.present) {
      map['str_answer'] = Variable<String>(strAnswer.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WordsCompanion(')
          ..write('strQuerstion: $strQuerstion, ')
          ..write('strAnswer: $strAnswer')
          ..write(')'))
        .toString();
  }
}

class $WordsTable extends Words with TableInfo<$WordsTable, Word> {
  final GeneratedDatabase _db;
  final String _alias;
  $WordsTable(this._db, [this._alias]);
  final VerificationMeta _strQuerstionMeta =
      const VerificationMeta('strQuerstion');
  GeneratedTextColumn _strQuerstion;
  @override
  GeneratedTextColumn get strQuerstion =>
      _strQuerstion ??= _constructStrQuerstion();
  GeneratedTextColumn _constructStrQuerstion() {
    return GeneratedTextColumn(
      'str_querstion',
      $tableName,
      false,
    );
  }

  final VerificationMeta _strAnswerMeta = const VerificationMeta('strAnswer');
  GeneratedTextColumn _strAnswer;
  @override
  GeneratedTextColumn get strAnswer => _strAnswer ??= _constructStrAnswer();
  GeneratedTextColumn _constructStrAnswer() {
    return GeneratedTextColumn(
      'str_answer',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [strQuerstion, strAnswer];
  @override
  $WordsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'words';
  @override
  final String actualTableName = 'words';
  @override
  VerificationContext validateIntegrity(Insertable<Word> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('str_querstion')) {
      context.handle(
          _strQuerstionMeta,
          strQuerstion.isAcceptableOrUnknown(
              data['str_querstion'], _strQuerstionMeta));
    } else if (isInserting) {
      context.missing(_strQuerstionMeta);
    }
    if (data.containsKey('str_answer')) {
      context.handle(_strAnswerMeta,
          strAnswer.isAcceptableOrUnknown(data['str_answer'], _strAnswerMeta));
    } else if (isInserting) {
      context.missing(_strAnswerMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {strQuerstion};
  @override
  Word map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Word.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $WordsTable createAlias(String alias) {
    return $WordsTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $WordsTable _words;
  $WordsTable get words => _words ??= $WordsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [words];
}
