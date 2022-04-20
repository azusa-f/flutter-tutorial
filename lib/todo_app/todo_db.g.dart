// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class TodoItem extends DataClass implements Insertable<TodoItem> {
  final int id;
  final String title;
  final String description;
  final DateTime addDate;
  final DateTime limitDate;
  TodoItem(
      {required this.id,
      required this.title,
      required this.description,
      required this.addDate,
      required this.limitDate});
  factory TodoItem.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TodoItem(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      addDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}add_date'])!,
      limitDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}limit_date'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['add_date'] = Variable<DateTime>(addDate);
    map['limit_date'] = Variable<DateTime>(limitDate);
    return map;
  }

  TodoItemsCompanion toCompanion(bool nullToAbsent) {
    return TodoItemsCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      addDate: Value(addDate),
      limitDate: Value(limitDate),
    );
  }

  factory TodoItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TodoItem(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      addDate: serializer.fromJson<DateTime>(json['addDate']),
      limitDate: serializer.fromJson<DateTime>(json['limitDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'addDate': serializer.toJson<DateTime>(addDate),
      'limitDate': serializer.toJson<DateTime>(limitDate),
    };
  }

  TodoItem copyWith(
          {int? id,
          String? title,
          String? description,
          DateTime? addDate,
          DateTime? limitDate}) =>
      TodoItem(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        addDate: addDate ?? this.addDate,
        limitDate: limitDate ?? this.limitDate,
      );
  @override
  String toString() {
    return (StringBuffer('TodoItem(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('addDate: $addDate, ')
          ..write('limitDate: $limitDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, description, addDate, limitDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodoItem &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.addDate == this.addDate &&
          other.limitDate == this.limitDate);
}

class TodoItemsCompanion extends UpdateCompanion<TodoItem> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<DateTime> addDate;
  final Value<DateTime> limitDate;
  const TodoItemsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.addDate = const Value.absent(),
    this.limitDate = const Value.absent(),
  });
  TodoItemsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String description,
    required DateTime addDate,
    required DateTime limitDate,
  })  : title = Value(title),
        description = Value(description),
        addDate = Value(addDate),
        limitDate = Value(limitDate);
  static Insertable<TodoItem> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<DateTime>? addDate,
    Expression<DateTime>? limitDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (addDate != null) 'add_date': addDate,
      if (limitDate != null) 'limit_date': limitDate,
    });
  }

  TodoItemsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? description,
      Value<DateTime>? addDate,
      Value<DateTime>? limitDate}) {
    return TodoItemsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      addDate: addDate ?? this.addDate,
      limitDate: limitDate ?? this.limitDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (addDate.present) {
      map['add_date'] = Variable<DateTime>(addDate.value);
    }
    if (limitDate.present) {
      map['limit_date'] = Variable<DateTime>(limitDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodoItemsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('addDate: $addDate, ')
          ..write('limitDate: $limitDate')
          ..write(')'))
        .toString();
  }
}

class $TodoItemsTable extends TodoItems
    with TableInfo<$TodoItemsTable, TodoItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodoItemsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _addDateMeta = const VerificationMeta('addDate');
  @override
  late final GeneratedColumn<DateTime?> addDate = GeneratedColumn<DateTime?>(
      'add_date', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _limitDateMeta = const VerificationMeta('limitDate');
  @override
  late final GeneratedColumn<DateTime?> limitDate = GeneratedColumn<DateTime?>(
      'limit_date', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, description, addDate, limitDate];
  @override
  String get aliasedName => _alias ?? 'todo_items';
  @override
  String get actualTableName => 'todo_items';
  @override
  VerificationContext validateIntegrity(Insertable<TodoItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('add_date')) {
      context.handle(_addDateMeta,
          addDate.isAcceptableOrUnknown(data['add_date']!, _addDateMeta));
    } else if (isInserting) {
      context.missing(_addDateMeta);
    }
    if (data.containsKey('limit_date')) {
      context.handle(_limitDateMeta,
          limitDate.isAcceptableOrUnknown(data['limit_date']!, _limitDateMeta));
    } else if (isInserting) {
      context.missing(_limitDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TodoItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TodoItem.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TodoItemsTable createAlias(String alias) {
    return $TodoItemsTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $TodoItemsTable todoItems = $TodoItemsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [todoItems];
}
