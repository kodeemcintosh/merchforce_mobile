
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:async/async.dart';


class AuthRepository {
  Future<Stream<String>> authenticate({ @required String username, @required String password }) async {
    final String url = 'https://$userCompanyDomain.merchforce.io/api/v1/login';

    final client = new http.Client();
    final streamedLogin = await client.send(
      http.Request('POST', Uri.parse(url))
    );

    return streamedLogin.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((map) => map);

    // await Future.delayed(Duration(seconds: 1));
    // return 'token';
  }

  Future<void> deleteToken() async {
    await Future.delayed(Duration(seconds: 1));

    return;
  }

  Future<void> persistToken(String token) async {
    await Future.delayed(Duration(seconds: 1));

    return;
  }

  Future<bool> hasToken() async {
    await Future.delayed(Duration(seconds: 1));

    return false;
  }
}