// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_diary_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Payment extends DataClass implements Insertable<Payment> {
  final int id;
  final int amount;
  final DateTime addDate;
  final int category;
  Payment(
      {required this.id,
      required this.amount,
      required this.addDate,
      required this.category});
  factory Payment.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Payment(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      amount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amount'])!,
      addDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}add_date'])!,
      category: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['amount'] = Variable<int>(amount);
    map['add_date'] = Variable<DateTime>(addDate);
    map['category'] = Variable<int>(category);
    return map;
  }

  PaymentsCompanion toCompanion(bool nullToAbsent) {
    return PaymentsCompanion(
      id: Value(id),
      amount: Value(amount),
      addDate: Value(addDate),
      category: Value(category),
    );
  }

  factory Payment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Payment(
      id: serializer.fromJson<int>(json['id']),
      amount: serializer.fromJson<int>(json['amount']),
      addDate: serializer.fromJson<DateTime>(json['addDate']),
      category: serializer.fromJson<int>(json['category']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'amount': serializer.toJson<int>(amount),
      'addDate': serializer.toJson<DateTime>(addDate),
      'category': serializer.toJson<int>(category),
    };
  }

  Payment copyWith({int? id, int? amount, DateTime? addDate, int? category}) =>
      Payment(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        addDate: addDate ?? this.addDate,
        category: category ?? this.category,
      );
  @override
  String toString() {
    return (StringBuffer('Payment(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('addDate: $addDate, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, amount, addDate, category);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Payment &&
          other.id == this.id &&
          other.amount == this.amount &&
          other.addDate == this.addDate &&
          other.category == this.category);
}

class PaymentsCompanion extends UpdateCompanion<Payment> {
  final Value<int> id;
  final Value<int> amount;
  final Value<DateTime> addDate;
  final Value<int> category;
  const PaymentsCompanion({
    this.id = const Value.absent(),
    this.amount = const Value.absent(),
    this.addDate = const Value.absent(),
    this.category = const Value.absent(),
  });
  PaymentsCompanion.insert({
    this.id = const Value.absent(),
    required int amount,
    required DateTime addDate,
    required int category,
  })  : amount = Value(amount),
        addDate = Value(addDate),
        category = Value(category);
  static Insertable<Payment> custom({
    Expression<int>? id,
    Expression<int>? amount,
    Expression<DateTime>? addDate,
    Expression<int>? category,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (amount != null) 'amount': amount,
      if (addDate != null) 'add_date': addDate,
      if (category != null) 'category': category,
    });
  }

  PaymentsCompanion copyWith(
      {Value<int>? id,
      Value<int>? amount,
      Value<DateTime>? addDate,
      Value<int>? category}) {
    return PaymentsCompanion(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      addDate: addDate ?? this.addDate,
      category: category ?? this.category,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (addDate.present) {
      map['add_date'] = Variable<DateTime>(addDate.value);
    }
    if (category.present) {
      map['category'] = Variable<int>(category.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentsCompanion(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('addDate: $addDate, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }
}

class $PaymentsTable extends Payments with TableInfo<$PaymentsTable, Payment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaymentsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<int?> amount = GeneratedColumn<int?>(
      'amount', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _addDateMeta = const VerificationMeta('addDate');
  @override
  late final GeneratedColumn<DateTime?> addDate = GeneratedColumn<DateTime?>(
      'add_date', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumn<int?> category = GeneratedColumn<int?>(
      'category', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, amount, addDate, category];
  @override
  String get aliasedName => _alias ?? 'payments';
  @override
  String get actualTableName => 'payments';
  @override
  VerificationContext validateIntegrity(Insertable<Payment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('add_date')) {
      context.handle(_addDateMeta,
          addDate.isAcceptableOrUnknown(data['add_date']!, _addDateMeta));
    } else if (isInserting) {
      context.missing(_addDateMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Payment map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Payment.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $PaymentsTable createAlias(String alias) {
    return $PaymentsTable(attachedDatabase, alias);
  }
}

abstract class _$MoneyDiaryDatabase extends GeneratedDatabase {
  _$MoneyDiaryDatabase(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  late final $PaymentsTable payments = $PaymentsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [payments];
}
