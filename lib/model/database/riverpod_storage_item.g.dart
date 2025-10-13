// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod_storage_item.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRiverpodStorageItemCollection on Isar {
  IsarCollection<RiverpodStorageItem> get riverpodStorageItems =>
      this.collection();
}

const RiverpodStorageItemSchema = CollectionSchema(
  name: r'RiverpodStorageItem',
  id: -1406720475976030006,
  properties: {
    r'destroyKey': PropertySchema(
      id: 0,
      name: r'destroyKey',
      type: IsarType.string,
    ),
    r'expireAt': PropertySchema(
      id: 1,
      name: r'expireAt',
      type: IsarType.dateTime,
    ),
    r'text': PropertySchema(id: 2, name: r'text', type: IsarType.string),
  },

  estimateSize: _riverpodStorageItemEstimateSize,
  serialize: _riverpodStorageItemSerialize,
  deserialize: _riverpodStorageItemDeserialize,
  deserializeProp: _riverpodStorageItemDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},

  getId: _riverpodStorageItemGetId,
  getLinks: _riverpodStorageItemGetLinks,
  attach: _riverpodStorageItemAttach,
  version: '3.3.0',
);

int _riverpodStorageItemEstimateSize(
  RiverpodStorageItem object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.destroyKey;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.text.length * 3;
  return bytesCount;
}

void _riverpodStorageItemSerialize(
  RiverpodStorageItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.destroyKey);
  writer.writeDateTime(offsets[1], object.expireAt);
  writer.writeString(offsets[2], object.text);
}

RiverpodStorageItem _riverpodStorageItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RiverpodStorageItem();
  object.destroyKey = reader.readStringOrNull(offsets[0]);
  object.expireAt = reader.readDateTimeOrNull(offsets[1]);
  object.id = id;
  object.text = reader.readString(offsets[2]);
  return object;
}

P _riverpodStorageItemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _riverpodStorageItemGetId(RiverpodStorageItem object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _riverpodStorageItemGetLinks(
  RiverpodStorageItem object,
) {
  return [];
}

void _riverpodStorageItemAttach(
  IsarCollection<dynamic> col,
  Id id,
  RiverpodStorageItem object,
) {
  object.id = id;
}

extension RiverpodStorageItemQueryWhereSort
    on QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QWhere> {
  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RiverpodStorageItemQueryWhere
    on QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QWhereClause> {
  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterWhereClause>
  idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterWhereClause>
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

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterWhereClause>
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
}

extension RiverpodStorageItemQueryFilter
    on
        QueryBuilder<
          RiverpodStorageItem,
          RiverpodStorageItem,
          QFilterCondition
        > {
  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  destroyKeyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'destroyKey'),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  destroyKeyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'destroyKey'),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  destroyKeyEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'destroyKey',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  destroyKeyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'destroyKey',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  destroyKeyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'destroyKey',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  destroyKeyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'destroyKey',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  destroyKeyStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'destroyKey',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  destroyKeyEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'destroyKey',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  destroyKeyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'destroyKey',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  destroyKeyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'destroyKey',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  destroyKeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'destroyKey', value: ''),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  destroyKeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'destroyKey', value: ''),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  expireAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'expireAt'),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  expireAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'expireAt'),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  expireAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'expireAt', value: value),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  expireAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'expireAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  expireAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'expireAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  expireAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'expireAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
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

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
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

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
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

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  textEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'text',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  textGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'text',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  textLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'text',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  textBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'text',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  textStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'text',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  textEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'text',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  textContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'text',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  textMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'text',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'text', value: ''),
      );
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterFilterCondition>
  textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'text', value: ''),
      );
    });
  }
}

extension RiverpodStorageItemQueryObject
    on
        QueryBuilder<
          RiverpodStorageItem,
          RiverpodStorageItem,
          QFilterCondition
        > {}

extension RiverpodStorageItemQueryLinks
    on
        QueryBuilder<
          RiverpodStorageItem,
          RiverpodStorageItem,
          QFilterCondition
        > {}

extension RiverpodStorageItemQuerySortBy
    on QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QSortBy> {
  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterSortBy>
  sortByDestroyKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destroyKey', Sort.asc);
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterSortBy>
  sortByDestroyKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destroyKey', Sort.desc);
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterSortBy>
  sortByExpireAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireAt', Sort.asc);
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterSortBy>
  sortByExpireAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireAt', Sort.desc);
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterSortBy>
  sortByText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.asc);
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterSortBy>
  sortByTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.desc);
    });
  }
}

extension RiverpodStorageItemQuerySortThenBy
    on QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QSortThenBy> {
  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterSortBy>
  thenByDestroyKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destroyKey', Sort.asc);
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterSortBy>
  thenByDestroyKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destroyKey', Sort.desc);
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterSortBy>
  thenByExpireAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireAt', Sort.asc);
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterSortBy>
  thenByExpireAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expireAt', Sort.desc);
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterSortBy>
  thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterSortBy>
  thenByText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.asc);
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QAfterSortBy>
  thenByTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.desc);
    });
  }
}

extension RiverpodStorageItemQueryWhereDistinct
    on QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QDistinct> {
  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QDistinct>
  distinctByDestroyKey({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'destroyKey', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QDistinct>
  distinctByExpireAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expireAt');
    });
  }

  QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QDistinct>
  distinctByText({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'text', caseSensitive: caseSensitive);
    });
  }
}

extension RiverpodStorageItemQueryProperty
    on QueryBuilder<RiverpodStorageItem, RiverpodStorageItem, QQueryProperty> {
  QueryBuilder<RiverpodStorageItem, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RiverpodStorageItem, String?, QQueryOperations>
  destroyKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'destroyKey');
    });
  }

  QueryBuilder<RiverpodStorageItem, DateTime?, QQueryOperations>
  expireAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expireAt');
    });
  }

  QueryBuilder<RiverpodStorageItem, String, QQueryOperations> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'text');
    });
  }
}
