import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Header extends StatefulWidget {
  final String title;
  final int chapterCnt;

  Header({Key key, @required String title, @required int chapterCnt})
      : assert(title != null),
        assert(chapterCnt != null),
        title = title,
        chapterCnt = chapterCnt,
        super(key: key);
  @override
  HeaderState createState() => HeaderState();
}

class HeaderState extends State<Header> with TickerProviderStateMixin {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<int> _readCnt;

  @override
  void initState() {
    super.initState();
    _readCnt = _prefs.then((SharedPreferences prefs) {
      return (prefs.getInt("${widget.title}Cnt") ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    num chapterCnt = widget.chapterCnt ?? 1;
    num avg;
    _readCnt = _prefs.then((SharedPreferences prefs) {
      return (prefs.getInt("${widget.title}Cnt") ?? 0);
    });

    return FutureBuilder<int>(
        future: _readCnt,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (snapshot.hasData) {
            avg = (snapshot.data / chapterCnt) * 100;
            return Column(
              children: [
                Image.asset('assets/flower.png', width: 48.0),
                SizedBox(height: 8.0),
                Text(
                  widget.title,
                  style: TextStyle(
                      color: Color(0xff796561),
                      fontSize: 12,
                      letterSpacing: -1.6,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8.0),
                Text(
                  avg.toStringAsFixed(1) + " %",
                  style: TextStyle(
                      color: Color(0xff796561),
                      fontSize: 12,
                      letterSpacing: -1.6,
                      fontWeight: FontWeight.w600),
                )
              ],
            );
          }
          return CircularProgressIndicator();
        });
  }
}
