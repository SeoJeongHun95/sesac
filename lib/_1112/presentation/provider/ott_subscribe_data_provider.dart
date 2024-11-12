import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/ott_subscribe.dart';

part 'ott_subscribe_data_provider.g.dart';

@riverpod
FutureOr<List<OttSubscribe>> ottSubscribeDataProvider(Ref ref) async {
  final String response =
      await rootBundle.loadString("lib/_1112/data/data/ottdata.json");
  final List<dynamic> jsonList = json.decode(response);

  return jsonList.map((e) => OttSubscribe.fromJson(e)).toList();
}
