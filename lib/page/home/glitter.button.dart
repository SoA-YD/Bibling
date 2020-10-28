import 'package:bibling/page/home/glitter.model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GlitterButton extends StatefulWidget {
  final Glitter glitter;
  final Function(int) notifyParent;

  GlitterButton(
      {Key key, @required Glitter glitter, @required this.notifyParent})
      : assert(glitter != null),
        glitter = glitter,
        super(key: key);
  @override
  GlitterButtonState createState() => GlitterButtonState();
}

class GlitterButtonState extends State<GlitterButton>
    with TickerProviderStateMixin {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<bool> _isTwinkle;
  Glitter _glitter;

  AnimationController _controller;
  Tween<double> _tween;

  @override
  void initState() {
    super.initState();
    _isTwinkle = _prefs.then((SharedPreferences prefs) {
      return (prefs.getBool("${_glitter.title}/${_glitter.chapter}") ?? false);
    });
    _glitter = widget.glitter;

    _controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    //_controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
        future: _isTwinkle,
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          bool isTwinkleValue = snapshot.data ?? false;
          _tween = Tween(begin: 1.0, end: !isTwinkleValue ? 1.0 : 1.18);
          return InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  _controller.forward();
                  _setTwinkle(isTwinkleValue);
                });
              },
              child: Column(
                children: [
                  ScaleTransition(
                    scale: _tween.animate(CurvedAnimation(
                        parent: _controller, curve: Curves.elasticOut)),
                    child: Image.asset(
                        isTwinkleValue ?? false
                            ? 'assets/open_face.png'
                            : 'assets/blind_face_brown.png',
                        height: 30.0 //31.0,
                        ),
                  ),
                  Text(
                    _glitter.chapter.toString(),
                    style: TextStyle(
                        color: Color(0xff796561),
                        fontSize: 10,
                        letterSpacing: -1,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ));
        });
  }

  Future<void> _setTwinkle(bool isTwinkleValue) async {
    final SharedPreferences prefs = await _prefs;
    final bool value = !(isTwinkleValue ?? false);

    setState(() {
      _isTwinkle = prefs
          .setBool("${_glitter.title}/${_glitter.chapter}", value)
          .then((bool success) {
        return value;
      });

      value ? _incrementCnt() : _decrementCnt();
    });
  }

  _incrementCnt() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('${_glitter.title}Cnt') ?? 0) + 1;
    await prefs.setInt('${_glitter.title}Cnt', counter);
    widget.notifyParent(counter);
  }

  _decrementCnt() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('${_glitter.title}Cnt') ?? 0) - 1;
    await prefs.setInt('${_glitter.title}Cnt', counter);
    widget.notifyParent(counter);
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }
}
