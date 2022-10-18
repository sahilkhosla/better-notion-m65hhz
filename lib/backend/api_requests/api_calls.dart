import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class NotionTokenCall {
  static Future<ApiCallResponse> call({
    String? code = '',
  }) {
    final body = '''
{
  "grant_type": "authorization_code",
  "code": "${code}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Notion Token',
      apiUrl: 'https://api.notion.com/v1/oauth/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Basic NWM2NTgwMzYtZGI4MS00YWFjLWJkY2MtZTYxNGYwYTE3NzUzOnNlY3JldF9GQXhPQ1F1dmlwYzllMlVHM3pKRVVXZmVXekh1RHFkcWJpa3dQc1daZjcw',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic botId(dynamic response) => getJsonField(
        response,
        r'''$.bot_id''',
      );
  static dynamic workspaceName(dynamic response) => getJsonField(
        response,
        r'''$.workspace_name''',
      );
  static dynamic workspaceIcon(dynamic response) => getJsonField(
        response,
        r'''$.workspace_icon''',
      );
  static dynamic workspaceId(dynamic response) => getJsonField(
        response,
        r'''$.workspace_id''',
      );
  static dynamic ownerType(dynamic response) => getJsonField(
        response,
        r'''$.owner.type''',
      );
  static dynamic ownerUserObject(dynamic response) => getJsonField(
        response,
        r'''$.owner.user.object''',
      );
  static dynamic ownerUserId(dynamic response) => getJsonField(
        response,
        r'''$.owner.user.id''',
      );
  static dynamic ownerUserName(dynamic response) => getJsonField(
        response,
        r'''$.owner.user.name''',
      );
  static dynamic ownerUserAvatarURL(dynamic response) => getJsonField(
        response,
        r'''$.owner.user.avatar_url''',
      );
  static dynamic ownerUserType(dynamic response) => getJsonField(
        response,
        r'''$.owner.user.type''',
      );
  static dynamic ownerUserEmail(dynamic response) => getJsonField(
        response,
        r'''$.owner.user.person.email''',
      );
  static dynamic accessToken(dynamic response) => getJsonField(
        response,
        r'''$.access_token''',
      );
}

class ListDatabasesCall {
  static Future<ApiCallResponse> call({
    String? accessTokenFromLocalStorage = '',
  }) {
    final body = '''
{
  "filter": {
    "property": "object",
    "value": "database"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'List Databases',
      apiUrl: 'https://api.notion.com/v1/search',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessTokenFromLocalStorage}',
        'Content-Type': 'application/json',
        'Notion-Version': '2022-06-28',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic dbSearchResults(dynamic response) => getJsonField(
        response,
        r'''$.results''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}
