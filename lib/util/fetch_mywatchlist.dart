import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:counter_7/model/mywatchlist.dart';
import 'package:flutter/material.dart';

Future<List<MyWatchList>> fetchWatchlist() async {
  var url = Uri.parse('http://10.0.2.2:8000/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<MyWatchList> listMyWatchlist = [];
  for (var d in data) {
    if (d != null) {
      listMyWatchlist.add(MyWatchList.fromJson(d));
    }
  }

  return listMyWatchlist;
}
