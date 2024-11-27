import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';


class RemoteServices{

  static var logger = Logger(
    //PrefixPrinter(PrettyPrinter(colors: true));
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 100,
      colors: true,
      printEmojis: true,
      printTime: false,
    ),
  );

  static void printResponse(
      Map<String, String> header, dynamic body, http.Response response) {
    logger.d('Header: $header');
    logger.d('Body : $body');
    logger.i('URL: ${response.request!.url}');
    logger.f('Response status: ${response.statusCode}');
    logger.i('Response body: ${response.body}',);
  }

  static Future<http.Response> loginAPI(String email, String password)async{
    print("----call Api");
    Map<String, String> header = {
      //'Authorization': 'Bearer $accessToken',
      'Authorization':'Basic ZGlzaGFuay5pQGNpcmlnaHQuY29tOkNpcmlnaHRAMTIz',
      'Access-Control-Allow-Origin': '*',
      'Content-Type': 'application/json',
      'Charset':'utf-8',
    };
    var body = jsonEncode({
      "subscriptionId": "8914081",
      "verticalId": "2803",
      "username": email,
      "password": password,
      "appId": "2839",
      "sphereTypeUrl": "todays-portal.htm"
      // "userToken": "String",
      // "isAutoLogin": "Number",

    });
    http.Response response = await http.post(Uri.parse(
       "https://www.myciright.com/Ciright/api/commonrestapi/m1342055" ),
        headers: header, body: body);

    debugPrint("======== login api =======");
    printResponse(header, body, response,);
    return response;
  }


}
