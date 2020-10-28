import 'package:bibling/page/home/bible.repository.dart';
import 'package:bibling/page/home/glitter.button.dart';
import 'package:bibling/page/home/header.dart';
import 'package:bibling/util/app.colors.dart';
import 'package:flutter/material.dart';

import 'home/glitter.model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BibleRepository _bibleRepository = BibleRepository();
  List<List<Glitter>> _oldTestament, _newTestament;

  @override
  void initState() {
    _oldTestament = _bibleRepository.oldTestament;
    _newTestament = _bibleRepository.newTestament;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: _appBar(),
        backgroundColor: bgColor,
        body: TabBarView(
          children: [
            _bodySection(),
            _bodySection(isOld: false),
          ],
        ),
      ),
    );
    // BottomPop());
  }

  _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight * .88),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.0),
            TabBar(
              tabs: [
                _tabText("구약"),
                _tabText("신약"),
              ],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 0.8,
            ),
          ],
        ),
      ),
    );
  }

  _tabText(String tab) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          tab,
          style: TextStyle(
              color: Colors.brown,
              fontSize: 15.0,
              fontWeight: FontWeight.w300,
              letterSpacing: 6.0),
        ));
  }

  _bodySection({bool isOld = true}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 0.0, 20.0, 8.0),
      child: ListView.builder(
          itemCount: isOld ? _oldTestament.length : _newTestament.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header(
                      title: isOld
                          ? _oldTestament[index][0].title
                          : _newTestament[index][0].title,
                      chapterCnt: isOld
                          ? _oldTestament[index].length ?? 1
                          : _newTestament[index].length ?? 1,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .72,
                      child: GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisCount: 6,
                          childAspectRatio: 1 / 1.32,
                          children: isOld
                              ? _oldTestament[index].map((Glitter glitter) {
                                  return GlitterButton(glitter: glitter);
                                }).toList()
                              : _newTestament[index].map((Glitter glitter) {
                                  return GlitterButton(glitter: glitter);
                                }).toList()),
                    ),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
