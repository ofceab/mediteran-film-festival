import 'api_manager.dart';

Future<dynamic> prijavniceCall() => ApiManager.instance.makeApiCall(
      callName: 'Prijavnice',
      apiDomain: 'bonk.apps.dreamfactory.com',
      apiEndpoint: 'api/v2/mff-baza/_table/Prijavnice',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );
