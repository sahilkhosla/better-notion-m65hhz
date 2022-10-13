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

  static dynamic success(dynamic response) => getJsonField(
        response,
        r'''$''',
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
