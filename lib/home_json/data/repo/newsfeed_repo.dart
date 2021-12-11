import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json/home_json/data/model/newsfeeds.model.dart';

class NewsfeedRepo {
  final String baseURl =
      "https://inshortsapi.vercel.app/news?category=national";

  Future<NewsfeedModle> getData() async {
    final data = await http.get(Uri.parse(baseURl));

    final decode = json.decode(data.body);

    return NewsfeedModle.fromJson(decode);
  }
}
