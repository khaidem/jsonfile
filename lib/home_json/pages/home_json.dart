import 'package:flutter/material.dart';
import 'package:json/home_json/pages/newslist.dart';

class HomeJsonPage extends StatelessWidget {
  const HomeJsonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HeaderTabs(),
    );
  }
}
