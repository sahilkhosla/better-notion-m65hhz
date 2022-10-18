import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'data_db_list_struct.g.dart';

abstract class DataDbListStruct
    implements Built<DataDbListStruct, DataDbListStructBuilder> {
  static Serializer<DataDbListStruct> get serializer =>
      _$dataDbListStructSerializer;

  String? get name;

  String? get id;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(DataDbListStructBuilder builder) => builder
    ..name = ''
    ..id = ''
    ..firestoreUtilData = FirestoreUtilData();

  DataDbListStruct._();
  factory DataDbListStruct([void Function(DataDbListStructBuilder) updates]) =
      _$DataDbListStruct;
}

DataDbListStruct createDataDbListStruct({
  String? name,
  String? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DataDbListStruct(
      (d) => d
        ..name = name
        ..id = id
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

DataDbListStruct? updateDataDbListStruct(
  DataDbListStruct? dataDbList, {
  bool clearUnsetFields = true,
}) =>
    dataDbList != null
        ? (dataDbList.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addDataDbListStructData(
  Map<String, dynamic> firestoreData,
  DataDbListStruct? dataDbList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dataDbList == null) {
    return;
  }
  if (dataDbList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && dataDbList.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dataDbListData = getDataDbListFirestoreData(dataDbList, forFieldValue);
  final nestedData = dataDbListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = dataDbList.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getDataDbListFirestoreData(
  DataDbListStruct? dataDbList, [
  bool forFieldValue = false,
]) {
  if (dataDbList == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(DataDbListStruct.serializer, dataDbList);

  // Add any Firestore field values
  dataDbList.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDataDbListListFirestoreData(
  List<DataDbListStruct>? dataDbLists,
) =>
    dataDbLists?.map((d) => getDataDbListFirestoreData(d, true)).toList() ?? [];
