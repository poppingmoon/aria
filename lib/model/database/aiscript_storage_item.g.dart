// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiscript_storage_item.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAiscriptStorageItemCollection on Isar {
  IsarCollection<AiscriptStorageItem> get aiscriptStorageItems =>
      this.collection();
}

const AiscriptStorageItemSchema = CollectionSchema(
  name: r'AiscriptStorageItem',
  id: -3207477754170856238,
  properties: {
    r'account': PropertySchema(id: 0, name: r'account', type: IsarType.string),
    r'key': PropertySchema(id: 1, name: r'key', type: IsarType.string),
    r'value': PropertySchema(id: 2, name: r'value', type: IsarType.string),
  },

  estimateSize: _aiscriptStorageItemEstimateSize,
  serialize: _aiscriptStorageItemSerialize,
  deserialize: _aiscriptStorageItemDeserialize,
  deserializeProp: _aiscriptStorageItemDeserializeProp,
  idName: r'id',
  indexes: {
    r'account_key': IndexSchema(
      id: -8637845676202290406,
      name: r'account_key',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'account',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'key',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _aiscriptStorageItemGetId,
  getLinks: _aiscriptStorageItemGetLinks,
  attach: _aiscriptStorageItemAttach,
  version: '3.3.2',
);

int _aiscriptStorageItemEstimateSize(
  AiscriptStorageItem object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.account.length * 3;
  bytesCount += 3 + object.key.length * 3;
  bytesCount += 3 + object.value.length * 3;
  return bytesCount;
}

void _aiscriptStorageItemSerialize(
  AiscriptStorageItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.account);
  writer.writeString(offsets[1], object.key);
  writer.writeString(offsets[2], object.value);
}

AiscriptStorageItem _aiscriptStorageItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AiscriptStorageItem();
  object.account = reader.readString(offsets[0]);
  object.id = id;
  object.key = reader.readString(offsets[1]);
  object.value = reader.readString(offsets[2]);
  return object;
}

P _aiscriptStorageItemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _aiscriptStorageItemGetId(AiscriptStorageItem object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _aiscriptStorageItemGetLinks(
  AiscriptStorageItem object,
) {
  return [];
}

void _aiscriptStorageItemAttach(
  IsarCollection<dynamic> col,
  Id id,
  AiscriptStorageItem object,
) {
  object.id = id;
}

extension AiscriptStorageItemByIndex on IsarCollection<AiscriptStorageItem> {
  Future<AiscriptStorageItem?> getByAccountKey(String account, String key) {
    return getByIndex(r'account_key', [account, key]);
  }

  AiscriptStorageItem? getByAccountKeySync(String account, String key) {
    return getByIndexSync(r'account_key', [account, key]);
  }

  Future<bool> deleteByAccountKey(String account, String key) {
    return deleteByIndex(r'account_key', [account, key]);
  }

  bool deleteByAccountKeySync(String account, String key) {
    return deleteByIndexSync(r'account_key', [account, key]);
  }

  Future<List<AiscriptStorageItem?>> getAllByAccountKey(
    List<String> accountValues,
    List<String> keyValues,
  ) {
    final len = accountValues.length;
    assert(
      keyValues.length == len,
      'All index values must have the same length',
    );
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([accountValues[i], keyValues[i]]);
    }

    return getAllByIndex(r'account_key', values);
  }

  List<AiscriptStorageItem?> getAllByAccountKeySync(
    List<String> accountValues,
    List<String> keyValues,
  ) {
    final len = accountValues.length;
    assert(
      keyValues.length == len,
      'All index values must have the same length',
    );
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([accountValues[i], keyValues[i]]);
    }

    return getAllByIndexSync(r'account_key', values);
  }

  Future<int> deleteAllByAccountKey(
    List<String> accountValues,
    List<String> keyValues,
  ) {
    final len = accountValues.length;
    assert(
      keyValues.length == len,
      'All index values must have the same length',
    );
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([accountValues[i], keyValues[i]]);
    }

    return deleteAllByIndex(r'account_key', values);
  }

  int deleteAllByAccountKeySync(
    List<String> accountValues,
    List<String> keyValues,
  ) {
    final len = accountValues.length;
    assert(
      keyValues.length == len,
      'All index values must have the same length',
    );
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([accountValues[i], keyValues[i]]);
    }

    return deleteAllByIndexSync(r'account_key', values);
  }

  Future<Id> putByAccountKey(AiscriptStorageItem object) {
    return putByIndex(r'account_key', object);
  }

  Id putByAccountKeySync(AiscriptStorageItem object, {bool saveLinks = true}) {
    return putByIndexSync(r'account_key', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByAccountKey(List<AiscriptStorageItem> objects) {
    return putAllByIndex(r'account_key', objects);
  }

  List<Id> putAllByAccountKeySync(
    List<AiscriptStorageItem> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'account_key', objects, saveLinks: saveLinks);
  }
}

extension AiscriptStorageItemQueryWhereSort
    on QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QWhere> {
  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AiscriptStorageItemQueryWhere
    on QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QWhereClause> {
  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterWhereClause>
  idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterWhereClause>
  idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterWhereClause>
  idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterWhereClause>
  accountEqualToAnyKey(String account) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'account_key', value: [account]),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterWhereClause>
  accountNotEqualToAnyKey(String account) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'account_key',
                lower: [],
                upper: [account],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'account_key',
                lower: [account],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'account_key',
                lower: [account],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'account_key',
                lower: [],
                upper: [account],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterWhereClause>
  accountKeyEqualTo(String account, String key) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'account_key',
          value: [account, key],
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterWhereClause>
  accountEqualToKeyNotEqualTo(String account, String key) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'account_key',
                lower: [account],
                upper: [account, key],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'account_key',
                lower: [account, key],
                includeLower: false,
                upper: [account],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'account_key',
                lower: [account, key],
                includeLower: false,
                upper: [account],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'account_key',
                lower: [account],
                upper: [account, key],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension AiscriptStorageItemQueryFilter
    on
        QueryBuilder<
          AiscriptStorageItem,
          AiscriptStorageItem,
          QFilterCondition
        > {
  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  accountEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'account',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  accountGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'account',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  accountLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'account',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  accountBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'account',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  accountStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'account',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  accountEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'account',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  accountContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'account',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  accountMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'account',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  accountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'account', value: ''),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  accountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'account', value: ''),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  idLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  keyEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  keyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  keyLessThan(String value, {bool include = false, bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  keyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'key',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  keyStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  keyEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  keyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  keyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'key',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'key', value: ''),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'key', value: ''),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  valueEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  valueGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  valueLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  valueBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'value',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  valueStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  valueEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  valueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  valueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'value',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'value', value: ''),
      );
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterFilterCondition>
  valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'value', value: ''),
      );
    });
  }
}

extension AiscriptStorageItemQueryObject
    on
        QueryBuilder<
          AiscriptStorageItem,
          AiscriptStorageItem,
          QFilterCondition
        > {}

extension AiscriptStorageItemQueryLinks
    on
        QueryBuilder<
          AiscriptStorageItem,
          AiscriptStorageItem,
          QFilterCondition
        > {}

extension AiscriptStorageItemQuerySortBy
    on QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QSortBy> {
  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterSortBy>
  sortByAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.asc);
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterSortBy>
  sortByAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.desc);
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterSortBy>
  sortByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterSortBy>
  sortByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterSortBy>
  sortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterSortBy>
  sortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension AiscriptStorageItemQuerySortThenBy
    on QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QSortThenBy> {
  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterSortBy>
  thenByAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.asc);
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterSortBy>
  thenByAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'account', Sort.desc);
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterSortBy>
  thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterSortBy>
  thenByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterSortBy>
  thenByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterSortBy>
  thenByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QAfterSortBy>
  thenByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension AiscriptStorageItemQueryWhereDistinct
    on QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QDistinct> {
  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QDistinct>
  distinctByAccount({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'account', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QDistinct>
  distinctByKey({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'key', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QDistinct>
  distinctByValue({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'value', caseSensitive: caseSensitive);
    });
  }
}

extension AiscriptStorageItemQueryProperty
    on QueryBuilder<AiscriptStorageItem, AiscriptStorageItem, QQueryProperty> {
  QueryBuilder<AiscriptStorageItem, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AiscriptStorageItem, String, QQueryOperations>
  accountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'account');
    });
  }

  QueryBuilder<AiscriptStorageItem, String, QQueryOperations> keyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'key');
    });
  }

  QueryBuilder<AiscriptStorageItem, String, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'value');
    });
  }
}
