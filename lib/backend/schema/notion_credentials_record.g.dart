// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notion_credentials_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotionCredentialsRecord> _$notionCredentialsRecordSerializer =
    new _$NotionCredentialsRecordSerializer();

class _$NotionCredentialsRecordSerializer
    implements StructuredSerializer<NotionCredentialsRecord> {
  @override
  final Iterable<Type> types = const [
    NotionCredentialsRecord,
    _$NotionCredentialsRecord
  ];
  @override
  final String wireName = 'NotionCredentialsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotionCredentialsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.botId;
    if (value != null) {
      result
        ..add('botId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workspaceName;
    if (value != null) {
      result
        ..add('workspaceName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workspaceIcon;
    if (value != null) {
      result
        ..add('workspaceIcon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workspaceId;
    if (value != null) {
      result
        ..add('workspaceId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ownerType;
    if (value != null) {
      result
        ..add('ownerType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ownerUserId;
    if (value != null) {
      result
        ..add('ownerUserId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ownerUserName;
    if (value != null) {
      result
        ..add('ownerUserName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ownerUserAvatarUrl;
    if (value != null) {
      result
        ..add('ownerUserAvatarUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.owerUserType;
    if (value != null) {
      result
        ..add('owerUserType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ownerUserEmail;
    if (value != null) {
      result
        ..add('ownerUserEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accessToken;
    if (value != null) {
      result
        ..add('accessToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  NotionCredentialsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotionCredentialsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'botId':
          result.botId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'workspaceName':
          result.workspaceName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'workspaceIcon':
          result.workspaceIcon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'workspaceId':
          result.workspaceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ownerType':
          result.ownerType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ownerUserId':
          result.ownerUserId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ownerUserName':
          result.ownerUserName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ownerUserAvatarUrl':
          result.ownerUserAvatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'owerUserType':
          result.owerUserType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ownerUserEmail':
          result.ownerUserEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$NotionCredentialsRecord extends NotionCredentialsRecord {
  @override
  final String? botId;
  @override
  final String? workspaceName;
  @override
  final String? workspaceIcon;
  @override
  final String? workspaceId;
  @override
  final String? ownerType;
  @override
  final String? ownerUserId;
  @override
  final String? ownerUserName;
  @override
  final String? ownerUserAvatarUrl;
  @override
  final String? owerUserType;
  @override
  final String? ownerUserEmail;
  @override
  final String? accessToken;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NotionCredentialsRecord(
          [void Function(NotionCredentialsRecordBuilder)? updates]) =>
      (new NotionCredentialsRecordBuilder()..update(updates))._build();

  _$NotionCredentialsRecord._(
      {this.botId,
      this.workspaceName,
      this.workspaceIcon,
      this.workspaceId,
      this.ownerType,
      this.ownerUserId,
      this.ownerUserName,
      this.ownerUserAvatarUrl,
      this.owerUserType,
      this.ownerUserEmail,
      this.accessToken,
      this.ffRef})
      : super._();

  @override
  NotionCredentialsRecord rebuild(
          void Function(NotionCredentialsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotionCredentialsRecordBuilder toBuilder() =>
      new NotionCredentialsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotionCredentialsRecord &&
        botId == other.botId &&
        workspaceName == other.workspaceName &&
        workspaceIcon == other.workspaceIcon &&
        workspaceId == other.workspaceId &&
        ownerType == other.ownerType &&
        ownerUserId == other.ownerUserId &&
        ownerUserName == other.ownerUserName &&
        ownerUserAvatarUrl == other.ownerUserAvatarUrl &&
        owerUserType == other.owerUserType &&
        ownerUserEmail == other.ownerUserEmail &&
        accessToken == other.accessToken &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, botId.hashCode),
                                                workspaceName.hashCode),
                                            workspaceIcon.hashCode),
                                        workspaceId.hashCode),
                                    ownerType.hashCode),
                                ownerUserId.hashCode),
                            ownerUserName.hashCode),
                        ownerUserAvatarUrl.hashCode),
                    owerUserType.hashCode),
                ownerUserEmail.hashCode),
            accessToken.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotionCredentialsRecord')
          ..add('botId', botId)
          ..add('workspaceName', workspaceName)
          ..add('workspaceIcon', workspaceIcon)
          ..add('workspaceId', workspaceId)
          ..add('ownerType', ownerType)
          ..add('ownerUserId', ownerUserId)
          ..add('ownerUserName', ownerUserName)
          ..add('ownerUserAvatarUrl', ownerUserAvatarUrl)
          ..add('owerUserType', owerUserType)
          ..add('ownerUserEmail', ownerUserEmail)
          ..add('accessToken', accessToken)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NotionCredentialsRecordBuilder
    implements
        Builder<NotionCredentialsRecord, NotionCredentialsRecordBuilder> {
  _$NotionCredentialsRecord? _$v;

  String? _botId;
  String? get botId => _$this._botId;
  set botId(String? botId) => _$this._botId = botId;

  String? _workspaceName;
  String? get workspaceName => _$this._workspaceName;
  set workspaceName(String? workspaceName) =>
      _$this._workspaceName = workspaceName;

  String? _workspaceIcon;
  String? get workspaceIcon => _$this._workspaceIcon;
  set workspaceIcon(String? workspaceIcon) =>
      _$this._workspaceIcon = workspaceIcon;

  String? _workspaceId;
  String? get workspaceId => _$this._workspaceId;
  set workspaceId(String? workspaceId) => _$this._workspaceId = workspaceId;

  String? _ownerType;
  String? get ownerType => _$this._ownerType;
  set ownerType(String? ownerType) => _$this._ownerType = ownerType;

  String? _ownerUserId;
  String? get ownerUserId => _$this._ownerUserId;
  set ownerUserId(String? ownerUserId) => _$this._ownerUserId = ownerUserId;

  String? _ownerUserName;
  String? get ownerUserName => _$this._ownerUserName;
  set ownerUserName(String? ownerUserName) =>
      _$this._ownerUserName = ownerUserName;

  String? _ownerUserAvatarUrl;
  String? get ownerUserAvatarUrl => _$this._ownerUserAvatarUrl;
  set ownerUserAvatarUrl(String? ownerUserAvatarUrl) =>
      _$this._ownerUserAvatarUrl = ownerUserAvatarUrl;

  String? _owerUserType;
  String? get owerUserType => _$this._owerUserType;
  set owerUserType(String? owerUserType) => _$this._owerUserType = owerUserType;

  String? _ownerUserEmail;
  String? get ownerUserEmail => _$this._ownerUserEmail;
  set ownerUserEmail(String? ownerUserEmail) =>
      _$this._ownerUserEmail = ownerUserEmail;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NotionCredentialsRecordBuilder() {
    NotionCredentialsRecord._initializeBuilder(this);
  }

  NotionCredentialsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _botId = $v.botId;
      _workspaceName = $v.workspaceName;
      _workspaceIcon = $v.workspaceIcon;
      _workspaceId = $v.workspaceId;
      _ownerType = $v.ownerType;
      _ownerUserId = $v.ownerUserId;
      _ownerUserName = $v.ownerUserName;
      _ownerUserAvatarUrl = $v.ownerUserAvatarUrl;
      _owerUserType = $v.owerUserType;
      _ownerUserEmail = $v.ownerUserEmail;
      _accessToken = $v.accessToken;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotionCredentialsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotionCredentialsRecord;
  }

  @override
  void update(void Function(NotionCredentialsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotionCredentialsRecord build() => _build();

  _$NotionCredentialsRecord _build() {
    final _$result = _$v ??
        new _$NotionCredentialsRecord._(
            botId: botId,
            workspaceName: workspaceName,
            workspaceIcon: workspaceIcon,
            workspaceId: workspaceId,
            ownerType: ownerType,
            ownerUserId: ownerUserId,
            ownerUserName: ownerUserName,
            ownerUserAvatarUrl: ownerUserAvatarUrl,
            owerUserType: owerUserType,
            ownerUserEmail: ownerUserEmail,
            accessToken: accessToken,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
