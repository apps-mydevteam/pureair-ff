import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CheckTodayAttendanceCall {
  static Future<ApiCallResponse> call({
    String? dated = '2024-04-10',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Check Today Attendance',
      apiUrl:
          'https://mtedujoyqzcdtdalgwpq.supabase.co/rest/v1/activitylogs?dated=eq.${dated}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im10ZWR1am95cXpjZHRkYWxnd3BxIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcxMjQ4MTk3OCwiZXhwIjoyMDI4MDU3OTc4fQ.dlsbi-BadELnzhc3BZNMeq8B3hPsTbInkW57f25WAjY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im10ZWR1am95cXpjZHRkYWxnd3BxIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcxMjQ4MTk3OCwiZXhwIjoyMDI4MDU3OTc4fQ.dlsbi-BadELnzhc3BZNMeq8B3hPsTbInkW57f25WAjY',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUserSupabaseCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create User Supabase',
      apiUrl: 'https://czcslianaeuhlibsxsob.supabase.co/auth/v1/signup',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN6Y3NsaWFuYWV1aGxpYnN4c29iIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzgyMDM0OTEsImV4cCI6MTk5Mzc3OTQ5MX0.KDQrA3RgqcCYbjA0Sqk8g03lHf_TT6aKNZ2HHGMZp7A',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetVoucherCall {
  static Future<ApiCallResponse> call({
    String? code = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Voucher',
      apiUrl:
          'https://czcslianaeuhlibsxsob.supabase.co/rest/v1/promos?code=eq.${code}&select=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN6Y3NsaWFuYWV1aGxpYnN4c29iIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzgyMDM0OTEsImV4cCI6MTk5Mzc3OTQ5MX0.KDQrA3RgqcCYbjA0Sqk8g03lHf_TT6aKNZ2HHGMZp7A',
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN6Y3NsaWFuYWV1aGxpYnN4c29iIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzgyMDM0OTEsImV4cCI6MTk5Mzc3OTQ5MX0.KDQrA3RgqcCYbjA0Sqk8g03lHf_TT6aKNZ2HHGMZp7A',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchAddressCall {
  static Future<ApiCallResponse> call({
    String? keyword = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Address',
      apiUrl:
          'https://www.onemap.gov.sg/api/common/elastic/search?searchVal=${keyword}&returnGeom=Y&getAddrDetails=Y',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? addressName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.results[:].ADDRESS''',
      ));
  static String? postalCode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.results[:].POSTAL''',
      ));
}

class CreateUserAPICRMCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? phone = '',
    String? name = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer": {
    "name": "${name}",
    "email": "${email}",
    "phone": "${phone}",
    "admin_notes": "Auto Generated"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create User API CRM',
      apiUrl: 'https://pureair-v2.linkbot.sg/api/customers/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class SendNotifAdminCall {
  static Future<ApiCallResponse> call({
    int? bookingId,
    String? fullname = '',
    String? bookingDate = '',
    String? bookingTime = '',
  }) async {
    final ffApiRequestBody = '''
{
  "booking_no": ${bookingId},
  "fullname": "${fullname}",
  "booking_date": "${bookingDate}",
  "booking_time": "${bookingTime}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Notif Admin',
      apiUrl: 'https://linkbot.app.n8n.cloud/webhook/pureair-new-booking-v2',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendNotifCustomerCall {
  static Future<ApiCallResponse> call({
    int? bookingId,
    String? fullname = '',
    String? bookingDate = '',
    String? bookingTime = '',
  }) async {
    final ffApiRequestBody = '''
{
  "booking_no": ${bookingId},
  "fullname": "${fullname}",
  "booking_date": "${bookingDate}",
  "booking_time": "${bookingTime}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Notif Customer',
      apiUrl:
          'https://linkbot.app.n8n.cloud/webhook/pureair-booking-confirmation-v2',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
