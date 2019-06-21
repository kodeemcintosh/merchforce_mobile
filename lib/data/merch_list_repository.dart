import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:async/async.dart';
import 'package:merchforce_mobile/models/merch.dart';
// import 'package:merchforce_mobile/models/merch_list_model.dart';

Future<Stream<Merch>> getMerchList({ @required String userCompanyDomain }) async {
  final String url = 'https://$userCompanyDomain.merchforce.io/api/v1/merch';

  final client = new http.Client();
  final streamedMerchList = await client.send(
    http.Request('GET', Uri.parse(url))
  );

  return streamedMerchList.stream
    .transform(utf8.decoder)
    .transform(json.decoder)
    .expand((data) => (data as List))
    // .map((map) => MerchListModel.fromJSON(map);
    .map((map) => map);

  // await Future.delayed(Duration(seconds: 1));
  // return 'token';
}