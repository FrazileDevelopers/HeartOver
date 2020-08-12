import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:heartover/constants/heart.dart';
import 'package:heartover/services/connectionStatus.dart';
import 'package:http/http.dart' as http;
import 'models/heartover.dart';

/*
 * 1. set global data variables
 * 2. fetch data 
 * 3. fetch more data 
 * 4. merge more data to original data 
*/
class FetchAPI with ChangeNotifier {
  FetchAPI();

  // String _jsonResonse = "";
  bool _isFetching = false;
  bool _isLoading = false;

  List<Msg> data = List<Msg>();

  ConnectionStatus _connection = ConnectionStatus.getInstance();

  bool get isFetching =>
      _isFetching; // It is checking whether data is fetched from the server or not yet.

  bool get isLoading =>
      _isLoading; // It is checking whether more data is fetched from the server or not yet.

  Future<List<Msg>> fetchData({int page}) async {
    String jsonResponse = '';
    notifyListeners();
    await _connection.checkConnection();

    if (_connection.hasConnection) {
      var response = await http.get(Heart.baseURL);

      if (response.statusCode == 200) {
        jsonResponse = response.body;
      }
    } else {
      jsonResponse = 'No';
    }

    // page == 1 ? _isFetching = false : _isLoading = false;
    notifyListeners();

    List<Msg> msgs = List<Msg>();
    if (jsonResponse.isNotEmpty) {
      Map<String, dynamic> json = jsonDecode(jsonResponse);
      msgs = HeartOver.fromJson(json).msg;
    }
    return msgs;
  }

  List<Msg> getResponseJson() => data;
}
