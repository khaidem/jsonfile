import 'package:flutter/material.dart';

import 'package:json/home_json/data/model/newsfeeds.model.dart';

import 'package:json/home_json/data/repo/newsfeed_repo.dart';

class HeaderTabs extends StatefulWidget {
  const HeaderTabs({Key? key}) : super(key: key);

  @override
  State<HeaderTabs> createState() => _HeaderTabsState();
}

class _HeaderTabsState extends State<HeaderTabs> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsfeedModle>(
        future: NewsfeedRepo().getData(),
        builder: (context, snapshot) {
          final d = snapshot.data;
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: d!.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(d.data[index].author),
                  );
                });
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
