// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_read_history.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetQrReadHistoryCollection on Isar {
  IsarCollection<QrReadHistory> get qrReadHistorys => this.collection();
}

const QrReadHistorySchema = CollectionSchema(
  name: r'QrReadHistory',
  id: 3690599168486747806,
  properties: {
    r'text': PropertySchema(id: 0, name: r'text', type: IsarType.string),
  },

  estimateSize: _qrReadHistoryEstimateSize,
  serialize: _qrReadHistorySerialize,
  deserialize: _qrReadHistoryDeserialize,
  deserializeProp: _qrReadHistoryDeserializeProp,
  idName: r'id',
  indexes: {
    r'text': IndexSchema(
      id: 5145922347574273553,
      name: r'text',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'text',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _qrReadHistoryGetId,
  getLinks: _qrReadHistoryGetLinks,
  attach: _qrReadHistoryAttach,
  version: '3.3.2',
);

int _qrReadHistoryEstimateSize(
  QrReadHistory object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.text.length * 3;
  return bytesCount;
}

void _qrReadHistorySerialize(
  QrReadHistory object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.text);
}

QrReadHistory _qrReadHistoryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QrReadHistory();
  object.id = id;
  object.text = reader.readString(offsets[0]);
  return object;
}

P _qrReadHistoryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _qrReadHistoryGetId(QrReadHistory object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _qrReadHistoryGetLinks(QrReadHistory object) {
  return [];
}

void _qrReadHistoryAttach(
  IsarCollection<dynamic> col,
  Id id,
  QrReadHistory object,
) {
  object.id = id;
}

extension QrReadHistoryByIndex on IsarCollection<QrReadHistory> {
  Future<QrReadHistory?> getByText(String text) {
    return getByIndex(r'text', [text]);
  }

  QrReadHistory? getByTextSync(String text) {
    return getByIndexSync(r'text', [text]);
  }

  Future<bool> deleteByText(String text) {
    return deleteByIndex(r'text', [text]);
  }

  bool deleteByTextSync(String text) {
    return deleteByIndexSync(r'text', [text]);
  }

  Future<List<QrReadHistory?>> getAllByText(List<String> textValues) {
    final values = textValues.map((e) => [e]).toList();
    return getAllByIndex(r'text', values);
  }

  List<QrReadHistory?> getAllByTextSync(List<String> textValues) {
    final values = textValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'text', values);
  }

  Future<int> deleteAllByText(List<String> textValues) {
    final values = textValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'text', values);
  }

  int deleteAllByTextSync(List<String> textValues) {
    final values = textValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'text', values);
  }

  Future<Id> putByText(QrReadHistory object) {
    return putByIndex(r'text', object);
  }

  Id putByTextSync(QrReadHistory object, {bool saveLinks = true}) {
    return putByIndexSync(r'text', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByText(List<QrReadHistory> objects) {
    return putAllByIndex(r'text', objects);
  }

  List<Id> putAllByTextSync(
    List<QrReadHistory> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'text', objects, saveLinks: saveLinks);
  }
}

extension QrReadHistoryQueryWhereSort
    on QueryBuilder<QrReadHistory, QrReadHistory, QWhere> {
  QueryBuilder<QrReadHistory, QrReadHistory, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension QrReadHistoryQueryWhere
    on QueryBuilder<QrReadHistory, QrReadHistory, QWhereClause> {
  QueryBuilder<QrReadHistory, QrReadHistory, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterWhereClause> idBetween(
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

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterWhereClause> textEqualTo(
    String text,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'text', value: [text]),
      );
    });
  }

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterWhereClause> textNotEqualTo(
    String text,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'text',
                lower: [],
                upper: [text],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'text',
                lower: [text],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'text',
                lower: [text],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'text',
                lower: [],
                upper: [text],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension QrReadHistoryQueryFilter
    on QueryBuilder<QrReadHistory, QrReadHistory, QFilterCondition> {
  QueryBuilder<QrReadHistory, QrReadHistory, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterFilterCondition>
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

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterFilterCondition> idBetween(
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

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterFilterCondition> textEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
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

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterFilterCondition>
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

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterFilterCondition>
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

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterFilterCondition> textBetween(
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

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterFilterCondition>
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

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterFilterCondition>
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

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterFilterCondition>
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

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterFilterCondition> textMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
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

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterFilterCondition>
  textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'text', value: ''),
      );
    });
  }

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterFilterCondition>
  textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'text', value: ''),
      );
    });
  }
}

extension QrReadHistoryQueryObject
    on QueryBuilder<QrReadHistory, QrReadHistory, QFilterCondition> {}

extension QrReadHistoryQueryLinks
    on QueryBuilder<QrReadHistory, QrReadHistory, QFilterCondition> {}

extension QrReadHistoryQuerySortBy
    on QueryBuilder<QrReadHistory, QrReadHistory, QSortBy> {
  QueryBuilder<QrReadHistory, QrReadHistory, QAfterSortBy> sortByText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.asc);
    });
  }

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterSortBy> sortByTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.desc);
    });
  }
}

extension QrReadHistoryQuerySortThenBy
    on QueryBuilder<QrReadHistory, QrReadHistory, QSortThenBy> {
  QueryBuilder<QrReadHistory, QrReadHistory, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterSortBy> thenByText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.asc);
    });
  }

  QueryBuilder<QrReadHistory, QrReadHistory, QAfterSortBy> thenByTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.desc);
    });
  }
}

extension QrReadHistoryQueryWhereDistinct
    on QueryBuilder<QrReadHistory, QrReadHistory, QDistinct> {
  QueryBuilder<QrReadHistory, QrReadHistory, QDistinct> distinctByText({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'text', caseSensitive: caseSensitive);
    });
  }
}

extension QrReadHistoryQueryProperty
    on QueryBuilder<QrReadHistory, QrReadHistory, QQueryProperty> {
  QueryBuilder<QrReadHistory, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<QrReadHistory, String, QQueryOperations> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'text');
    });
  }
}
