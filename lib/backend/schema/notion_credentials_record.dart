import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notion_credentials_record.g.dart';

abstract class NotionCredentialsRecord
    implements Built<NotionCredentialsRecord, NotionCredentialsRecordBuilder> {
  static Serializer<NotionCredentialsRecord> get serializer =>
      _$notionCredentialsRecordSerializer;

  String? get botId;

  String? get workspaceName;

  String? get workspaceIcon;

  String? get workspaceId;

  String? get ownerType;

  String? get ownerUserId;

  String? get ownerUserName;

  String? get ownerUserAvatarUrl;

  String? get owerUserType;

  String? get ownerUserEmail;

  String? get accessToken;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NotionCredentialsRecordBuilder builder) =>
      builder
        ..botId = ''
        ..workspaceName = ''
        ..workspaceIcon = ''
        ..workspaceId = ''
        ..ownerType = ''
        ..ownerUserId = ''
        ..ownerUserName = ''
        ..ownerUserAvatarUrl = ''
        ..owerUserType = ''
        ..ownerUserEmail = ''
        ..accessToken = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notion-credentials');

  static Stream<NotionCredentialsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NotionCredentialsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NotionCredentialsRecord._();
  factory NotionCredentialsRecord(
          [void Function(NotionCredentialsRecordBuilder) updates]) =
      _$NotionCredentialsRecord;

  static NotionCredentialsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNotionCredentialsRecordData({
  String? botId,
  String? workspaceName,
  String? workspaceIcon,
  String? workspaceId,
  String? ownerType,
  String? ownerUserId,
  String? ownerUserName,
  String? ownerUserAvatarUrl,
  String? owerUserType,
  String? ownerUserEmail,
  String? accessToken,
}) {
  final firestoreData = serializers.toFirestore(
    NotionCredentialsRecord.serializer,
    NotionCredentialsRecord(
      (n) => n
        ..botId = botId
        ..workspaceName = workspaceName
        ..workspaceIcon = workspaceIcon
        ..workspaceId = workspaceId
        ..ownerType = ownerType
        ..ownerUserId = ownerUserId
        ..ownerUserName = ownerUserName
        ..ownerUserAvatarUrl = ownerUserAvatarUrl
        ..owerUserType = owerUserType
        ..ownerUserEmail = ownerUserEmail
        ..accessToken = accessToken,
    ),
  );

  return firestoreData;
}
