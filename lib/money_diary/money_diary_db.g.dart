// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_diary_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Payment extends DataClass implements Insertable<Payment> {
  final int id;
  final int amount;
  final DateTime usedDate;
  final String category;
  Payment(
      {required this.id,
      required this.amount,
      required this.usedDate,
      required this.category});
  factory Payment.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Payment(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      amount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amount'])!,
      usedDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}used_date'])!,
      category: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['amount'] = Variable<int>(amount);
    map['used_date'] = Variable<DateTime>(usedDate);
    map['category'] = Variable<String>(category);
    return map;
  }

  PaymentsCompanion toCompanion(bool nullToAbsent) {
    return PaymentsCompanion(
      id: Value(id),
      amount: Value(amount),
      usedDate: Value(usedDate),
      category: Value(category),
    );
  }

  factory Payment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Payment(
      id: serializer.fromJson<int>(json['id']),
      amount: serializer.fromJson<int>(json['amount']),
      usedDate: serializer.fromJson<DateTime>(json['usedDate']),
      category: serializer.fromJson<String>(json['category']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'amount': serializer.toJson<int>(amount),
      'usedDate': serializer.toJson<DateTime>(usedDate),
      'category': serializer.toJson<String>(category),
    };
  }

  Payment copyWith(
          {int? id, int? amount, DateTime? usedDate, String? category}) =>
      Payment(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        usedDate: usedDate ?? this.usedDate,
        category: category ?? this.category,
      );
  @override
  String toString() {
    return (StringBuffer('Payment(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('usedDate: $usedDate, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, amount, usedDate, category);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Payment &&
          other.id == this.id &&
          other.amount == this.amount &&
          other.usedDate == this.usedDate &&
          other.category == this.category);
}

class PaymentsCompanion extends UpdateCompanion<Payment> {
  final Value<int> id;
  final Value<int> amount;
  final Value<DateTime> usedDate;
  final Value<String> category;
  const PaymentsCompanion({
    this.id = const Value.absent(),
    this.amount = const Value.absent(),
    this.usedDate = const Value.absent(),
    this.category = const Value.absent(),
  });
  PaymentsCompanion.insert({
    this.id = const Value.absent(),
    required int amount,
    required DateTime usedDate,
    required String category,
  })  : amount = Value(amount),
        usedDate = Value(usedDate),
        category = Value(category);
  static Insertable<Payment> custom({
    Expression<int>? id,
    Expression<int>? amount,
    Expression<DateTime>? usedDate,
    Expression<String>? category,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (amount != null) 'amount': amount,
      if (usedDate != null) 'used_date': usedDate,
      if (category != null) 'category': category,
    });
  }

  PaymentsCompanion copyWith(
      {Value<int>? id,
      Value<int>? amount,
      Value<DateTime>? usedDate,
      Value<String>? category}) {
    return PaymentsCompanion(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      usedDate: usedDate ?? this.usedDate,
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
    if (usedDate.present) {
      map['used_date'] = Variable<DateTime>(usedDate.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentsCompanion(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('usedDate: $usedDate, ')
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
  final VerificationMeta _usedDateMeta = const VerificationMeta('usedDate');
  @override
  late final GeneratedColumn<DateTime?> usedDate = GeneratedColumn<DateTime?>(
      'used_date', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumn<String?> category = GeneratedColumn<String?>(
      'category', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, amount, usedDate, category];
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
    if (data.containsKey('used_date')) {
      context.handle(_usedDateMeta,
          usedDate.isAcceptableOrUnknown(data['used_date']!, _usedDateMeta));
    } else if (isInserting) {
      context.missing(_usedDateMeta);
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
