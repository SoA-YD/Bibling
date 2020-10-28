class Glitter {
  final String title;
  final int chapter;
  bool isTwinkle;

  Glitter({this.title, this.chapter, this.isTwinkle = false});

  /*factory Glitter.fromDs(DocumentSnapshot ds) {
    return Glitter(
      title: ds['title'],
      chapter: ds['chapter'],
      isTwinkle: ds['isTwinkle'],
    );
  }*/

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'chapter': chapter,
      'isTwinkle': isTwinkle,
    };
  }
}
