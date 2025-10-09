// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_object.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCacheObjectCollection on Isar {
  IsarCollection<CacheObject> get cacheObjects => this.collection();
}

const CacheObjectSchema = CollectionSchema(
  name: r'CacheObject',
  id: 1217021884915065037,
  properties: {
    r'eTag': PropertySchema(id: 0, name: r'eTag', type: IsarType.string),
    r'key': PropertySchema(id: 1, name: r'key', type: IsarType.string),
    r'length': PropertySchema(id: 2, name: r'length', type: IsarType.long),
    r'relativePath': PropertySchema(
      id: 3,
      name: r'relativePath',
      type: IsarType.string,
    ),
    r'touched': PropertySchema(
      id: 4,
      name: r'touched',
      type: IsarType.dateTime,
    ),
    r'url': PropertySchema(id: 5, name: r'url', type: IsarType.string),
    r'validTill': PropertySchema(
      id: 6,
      name: r'validTill',
      type: IsarType.dateTime,
    ),
  },

  estimateSize: _cacheObjectEstimateSize,
  serialize: _cacheObjectSerialize,
  deserialize: _cacheObjectDeserialize,
  deserializeProp: _cacheObjectDeserializeProp,
  idName: r'id',
  indexes: {
    r'key': IndexSchema(
      id: -4906094122524121629,
      name: r'key',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'key',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
    r'touched': IndexSchema(
      id: 3248189367032473835,
      name: r'touched',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'touched',
          type: IndexType.value,
          caseSensitive: false,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _cacheObjectGetId,
  getLinks: _cacheObjectGetLinks,
  attach: _cacheObjectAttach,
  version: '3.3.2',
);

int _cacheObjectEstimateSize(
  CacheObject object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.eTag;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.key.length * 3;
  bytesCount += 3 + object.relativePath.length * 3;
  bytesCount += 3 + object.url.length * 3;
  return bytesCount;
}

void _cacheObjectSerialize(
  CacheObject object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.eTag);
  writer.writeString(offsets[1], object.key);
  writer.writeLong(offsets[2], object.length);
  writer.writeString(offsets[3], object.relativePath);
  writer.writeDateTime(offsets[4], object.touched);
  writer.writeString(offsets[5], object.url);
  writer.writeDateTime(offsets[6], object.validTill);
}

CacheObject _cacheObjectDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CacheObject();
  object.eTag = reader.readStringOrNull(offsets[0]);
  object.id = id;
  object.key = reader.readString(offsets[1]);
  object.length = reader.readLongOrNull(offsets[2]);
  object.relativePath = reader.readString(offsets[3]);
  object.touched = reader.readDateTimeOrNull(offsets[4]);
  object.url = reader.readString(offsets[5]);
  object.validTill = reader.readDateTime(offsets[6]);
  return object;
}

P _cacheObjectDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cacheObjectGetId(CacheObject object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _cacheObjectGetLinks(CacheObject object) {
  return [];
}

void _cacheObjectAttach(
  IsarCollection<dynamic> col,
  Id id,
  CacheObject object,
) {
  object.id = id;
}

extension CacheObjectByIndex on IsarCollection<CacheObject> {
  Future<CacheObject?> getByKey(String key) {
    return getByIndex(r'key', [key]);
  }

  CacheObject? getByKeySync(String key) {
    return getByIndexSync(r'key', [key]);
  }

  Future<bool> deleteByKey(String key) {
    return deleteByIndex(r'key', [key]);
  }

  bool deleteByKeySync(String key) {
    return deleteByIndexSync(r'key', [key]);
  }

  Future<List<CacheObject?>> getAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndex(r'key', values);
  }

  List<CacheObject?> getAllByKeySync(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'key', values);
  }

  Future<int> deleteAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'key', values);
  }

  int deleteAllByKeySync(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'key', values);
  }

  Future<Id> putByKey(CacheObject object) {
    return putByIndex(r'key', object);
  }

  Id putByKeySync(CacheObject object, {bool saveLinks = true}) {
    return putByIndexSync(r'key', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByKey(List<CacheObject> objects) {
    return putAllByIndex(r'key', objects);
  }

  List<Id> putAllByKeySync(List<CacheObject> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'key', objects, saveLinks: saveLinks);
  }
}

extension CacheObjectQueryWhereSort
    on QueryBuilder<CacheObject, CacheObject, QWhere> {
  QueryBuilder<CacheObject, CacheObject, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterWhere> anyTouched() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'touched'),
      );
    });
  }
}

extension CacheObjectQueryWhere
    on QueryBuilder<CacheObject, CacheObject, QWhereClause> {
  QueryBuilder<CacheObject, CacheObject, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterWhereClause> idNotEqualTo(
    Id id,
  ) {
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

  QueryBuilder<CacheObject, CacheObject, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterWhereClause> idBetween(
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

  QueryBuilder<CacheObject, CacheObject, QAfterWhereClause> keyEqualTo(
    String key,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'key', value: [key]),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterWhereClause> keyNotEqualTo(
    String key,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'key',
                lower: [],
                upper: [key],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'key',
                lower: [key],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'key',
                lower: [key],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'key',
                lower: [],
                upper: [key],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterWhereClause> touchedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'touched', value: [null]),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterWhereClause> touchedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'touched',
          lower: [null],
          includeLower: false,
          upper: [],
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterWhereClause> touchedEqualTo(
    DateTime? touched,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'touched', value: [touched]),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterWhereClause> touchedNotEqualTo(
    DateTime? touched,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'touched',
                lower: [],
                upper: [touched],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'touched',
                lower: [touched],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'touched',
                lower: [touched],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'touched',
                lower: [],
                upper: [touched],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterWhereClause> touchedGreaterThan(
    DateTime? touched, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'touched',
          lower: [touched],
          includeLower: include,
          upper: [],
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterWhereClause> touchedLessThan(
    DateTime? touched, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'touched',
          lower: [],
          upper: [touched],
          includeUpper: include,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterWhereClause> touchedBetween(
    DateTime? lowerTouched,
    DateTime? upperTouched, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'touched',
          lower: [lowerTouched],
          includeLower: includeLower,
          upper: [upperTouched],
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension CacheObjectQueryFilter
    on QueryBuilder<CacheObject, CacheObject, QFilterCondition> {
  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> eTagIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'eTag'),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  eTagIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'eTag'),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> eTagEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'eTag',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> eTagGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'eTag',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> eTagLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'eTag',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> eTagBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'eTag',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> eTagStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'eTag',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> eTagEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'eTag',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> eTagContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'eTag',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> eTagMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'eTag',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> eTagIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'eTag', value: ''),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  eTagIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'eTag', value: ''),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'id'),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'id'),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> idEqualTo(
    Id? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
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

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
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

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> keyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
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

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> keyGreaterThan(
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

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> keyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
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

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> keyBetween(
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

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
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

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
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

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> keyContains(
    String value, {
    bool caseSensitive = true,
  }) {
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

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> keyMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
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

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'key', value: ''),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'key', value: ''),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> lengthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'length'),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  lengthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'length'),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> lengthEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'length', value: value),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  lengthGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'length',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> lengthLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'length',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> lengthBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'length',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  relativePathEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'relativePath',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  relativePathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'relativePath',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  relativePathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'relativePath',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  relativePathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'relativePath',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  relativePathStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'relativePath',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  relativePathEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'relativePath',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  relativePathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'relativePath',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  relativePathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'relativePath',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  relativePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'relativePath', value: ''),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  relativePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'relativePath', value: ''),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  touchedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'touched'),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  touchedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'touched'),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> touchedEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'touched', value: value),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  touchedGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'touched',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> touchedLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'touched',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> touchedBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'touched',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> urlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> urlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> urlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'url',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> urlContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> urlMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'url',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'url', value: ''),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'url', value: ''),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  validTillEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'validTill', value: value),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  validTillGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'validTill',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  validTillLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'validTill',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterFilterCondition>
  validTillBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'validTill',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension CacheObjectQueryObject
    on QueryBuilder<CacheObject, CacheObject, QFilterCondition> {}

extension CacheObjectQueryLinks
    on QueryBuilder<CacheObject, CacheObject, QFilterCondition> {}

extension CacheObjectQuerySortBy
    on QueryBuilder<CacheObject, CacheObject, QSortBy> {
  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> sortByETag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTag', Sort.asc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> sortByETagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTag', Sort.desc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> sortByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> sortByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> sortByLength() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'length', Sort.asc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> sortByLengthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'length', Sort.desc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> sortByRelativePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.asc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy>
  sortByRelativePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.desc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> sortByTouched() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'touched', Sort.asc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> sortByTouchedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'touched', Sort.desc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> sortByValidTill() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validTill', Sort.asc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> sortByValidTillDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validTill', Sort.desc);
    });
  }
}

extension CacheObjectQuerySortThenBy
    on QueryBuilder<CacheObject, CacheObject, QSortThenBy> {
  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> thenByETag() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTag', Sort.asc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> thenByETagDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTag', Sort.desc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> thenByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> thenByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> thenByLength() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'length', Sort.asc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> thenByLengthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'length', Sort.desc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> thenByRelativePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.asc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy>
  thenByRelativePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relativePath', Sort.desc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> thenByTouched() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'touched', Sort.asc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> thenByTouchedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'touched', Sort.desc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> thenByValidTill() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validTill', Sort.asc);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QAfterSortBy> thenByValidTillDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validTill', Sort.desc);
    });
  }
}

extension CacheObjectQueryWhereDistinct
    on QueryBuilder<CacheObject, CacheObject, QDistinct> {
  QueryBuilder<CacheObject, CacheObject, QDistinct> distinctByETag({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eTag', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QDistinct> distinctByKey({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'key', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QDistinct> distinctByLength() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'length');
    });
  }

  QueryBuilder<CacheObject, CacheObject, QDistinct> distinctByRelativePath({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'relativePath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QDistinct> distinctByTouched() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'touched');
    });
  }

  QueryBuilder<CacheObject, CacheObject, QDistinct> distinctByUrl({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CacheObject, CacheObject, QDistinct> distinctByValidTill() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'validTill');
    });
  }
}

extension CacheObjectQueryProperty
    on QueryBuilder<CacheObject, CacheObject, QQueryProperty> {
  QueryBuilder<CacheObject, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CacheObject, String?, QQueryOperations> eTagProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eTag');
    });
  }

  QueryBuilder<CacheObject, String, QQueryOperations> keyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'key');
    });
  }

  QueryBuilder<CacheObject, int?, QQueryOperations> lengthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'length');
    });
  }

  QueryBuilder<CacheObject, String, QQueryOperations> relativePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'relativePath');
    });
  }

  QueryBuilder<CacheObject, DateTime?, QQueryOperations> touchedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'touched');
    });
  }

  QueryBuilder<CacheObject, String, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }

  QueryBuilder<CacheObject, DateTime, QQueryOperations> validTillProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'validTill');
    });
  }
}
