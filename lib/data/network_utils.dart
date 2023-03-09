import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class NetworkUtils {

  //get mathod for http request
  Future<dynamic> getMethod(String url, {VoidCallback? OnUnAuthorize}) async {
    try {
      Uri uri = Uri.parse(url);
      final Response response = await get(uri,headers: {
        'token':''
      });
      log(response.body);
      if (response == 200) {
        return jsonDecode(response.body);
      } else if (response == 401) {
        if (OnUnAuthorize != null) {
          OnUnAuthorize();
        }
      } else {
        log('Status Code ${response.statusCode}');
      }
    } catch (e) {
      log(e.toString());
    }
  }

//post mathod for http request
  Future<dynamic> PostMathod(String url,
      {VoidCallback? onUnAuthorize, Map<String, String>? body}) async {
    try {
      Uri uri = Uri.parse(url);
      final Response response =
          await post(uri, headers: {"Content-Type": "application/json", "token": " "}, body: body);
      log(response.body);
      if (response == 200) {
        return jsonDecode(response.body);
      } else if (onUnAuthorize == 401) {
        if (onUnAuthorize != null) {
          onUnAuthorize();
        } else {
          log('Status Code ${response.statusCode}');
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
