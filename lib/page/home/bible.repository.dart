import 'package:bibling/page/home/glitter.model.dart';

/// 구약 - Old Testament
class BibleRepository {
  List<List<Glitter>> oldTestament = [
    genesis,
    exodus,
    leviticus,
    numbers,
    deuteronomy,
    joshua,
    judges,
    ruth,
    samuel1,
    samuel2,
    kings1,
    kings2,
    chronicles1,
    chronicles2,
    ezra,
    nehemiah,
    esther,
    job,
    psalms,
    proverbs,
    ecclesiastes,
    songOfSongs,
    isaiah,
    jeremiah,
    lamentations,
    ezekiel,
    daniel,
    hosea,
    joel,
    amos,
    obadiah,
    jonah,
    micah,
    nahum,
    habakkuk,
    zephaniah,
    haggai,
    zechariah,
    malachi
  ];

  static List<Glitter> genesis =
      List.generate(50, (idx) => Glitter(title: '창세기', chapter: idx + 1));

  static List<Glitter> exodus =
      List.generate(40, (idx) => Glitter(title: '출애굽기', chapter: idx + 1));

  static List<Glitter> leviticus =
      List.generate(27, (idx) => Glitter(title: '레위기', chapter: idx + 1));

  static List<Glitter> numbers =
      List.generate(36, (idx) => Glitter(title: '민수기', chapter: idx + 1));

  static List<Glitter> deuteronomy =
      List.generate(34, (idx) => Glitter(title: '신명기', chapter: idx + 1));

  static List<Glitter> joshua =
      List.generate(24, (idx) => Glitter(title: '여호수아', chapter: idx + 1));

  static List<Glitter> judges =
      List.generate(21, (idx) => Glitter(title: '사사기', chapter: idx + 1));

  static List<Glitter> ruth =
      List.generate(4, (idx) => Glitter(title: '룻기', chapter: idx + 1));

  static List<Glitter> samuel1 =
      List.generate(31, (idx) => Glitter(title: '사무엘상', chapter: idx + 1));

  static List<Glitter> samuel2 =
      List.generate(24, (idx) => Glitter(title: '사무엘하', chapter: idx + 1));

  static List<Glitter> kings1 =
      List.generate(22, (idx) => Glitter(title: '열왕기상', chapter: idx + 1));

  static List<Glitter> kings2 =
      List.generate(25, (idx) => Glitter(title: '열왕기하', chapter: idx + 1));

  static List<Glitter> chronicles1 =
      List.generate(29, (idx) => Glitter(title: '역대상', chapter: idx + 1));

  static List<Glitter> chronicles2 =
      List.generate(36, (idx) => Glitter(title: '역대하', chapter: idx + 1));

  static List<Glitter> ezra =
      List.generate(10, (idx) => Glitter(title: '에스라', chapter: idx + 1));

  static List<Glitter> nehemiah =
      List.generate(13, (idx) => Glitter(title: '느헤미야', chapter: idx + 1));

  static List<Glitter> esther =
      List.generate(10, (idx) => Glitter(title: '에스더', chapter: idx + 1));

  static List<Glitter> job =
      List.generate(42, (idx) => Glitter(title: '욥기', chapter: idx + 1));

  static List<Glitter> psalms =
      List.generate(150, (idx) => Glitter(title: '시편', chapter: idx + 1));

  static List<Glitter> proverbs =
      List.generate(31, (idx) => Glitter(title: '잠언', chapter: idx + 1));

  static List<Glitter> ecclesiastes =
      List.generate(12, (idx) => Glitter(title: '전도서', chapter: idx + 1));

  static List<Glitter> songOfSongs =
      List.generate(8, (idx) => Glitter(title: '아가', chapter: idx + 1));

  static List<Glitter> isaiah =
      List.generate(66, (idx) => Glitter(title: '이사야', chapter: idx + 1));

  static List<Glitter> jeremiah =
      List.generate(52, (idx) => Glitter(title: '예레미야', chapter: idx + 1));

  static List<Glitter> lamentations =
      List.generate(5, (idx) => Glitter(title: '애가', chapter: idx + 1));

  static List<Glitter> ezekiel =
      List.generate(48, (idx) => Glitter(title: '에스겔', chapter: idx + 1));

  static List<Glitter> daniel =
      List.generate(12, (idx) => Glitter(title: '다니엘', chapter: idx + 1));

  static List<Glitter> hosea =
      List.generate(14, (idx) => Glitter(title: '호세아', chapter: idx + 1));

  static List<Glitter> joel =
      List.generate(3, (idx) => Glitter(title: '요엘', chapter: idx + 1));

  static List<Glitter> amos =
      List.generate(9, (idx) => Glitter(title: '아모스', chapter: idx + 1));

  static List<Glitter> obadiah =
      List.generate(1, (idx) => Glitter(title: '오바댜', chapter: idx + 1));

  static List<Glitter> jonah =
      List.generate(4, (idx) => Glitter(title: '요나', chapter: idx + 1));

  static List<Glitter> micah =
      List.generate(7, (idx) => Glitter(title: '미가', chapter: idx + 1));

  static List<Glitter> nahum =
      List.generate(3, (idx) => Glitter(title: '나훔', chapter: idx + 1));

  static List<Glitter> habakkuk =
      List.generate(3, (idx) => Glitter(title: '하박국', chapter: idx + 1));

  static List<Glitter> zephaniah =
      List.generate(3, (idx) => Glitter(title: '스바냐', chapter: idx + 1));

  static List<Glitter> haggai =
      List.generate(2, (idx) => Glitter(title: '학개', chapter: idx + 1));

  static List<Glitter> zechariah =
      List.generate(14, (idx) => Glitter(title: '스가랴', chapter: idx + 1));

  static List<Glitter> malachi =
      List.generate(4, (idx) => Glitter(title: '말라기', chapter: idx + 1));

  /// 신약 - New Testaments

  List<List<Glitter>> newTestament = [
    matthew,
    mark,
    luke,
    john,
    acts,
    romans,
    corinthians1,
    corinthians2,
    galatians,
    ephesians,
    colossians,
    thessalonians1,
    thessalonians2,
    timothy1,
    timothy2,
    titus,
    philemon,
    hebrews,
    james,
    peter1,
    peter2,
    john1,
    john2,
    john3,
    jude,
    revelation,
  ];

  static List<Glitter> matthew =
      List.generate(28, (idx) => Glitter(title: '마태복음', chapter: idx + 1));

  static List<Glitter> mark =
      List.generate(16, (idx) => Glitter(title: '마가복음', chapter: idx + 1));

  static List<Glitter> luke =
      List.generate(24, (idx) => Glitter(title: '누가복음', chapter: idx + 1));

  static List<Glitter> john =
      List.generate(21, (idx) => Glitter(title: '요한복음', chapter: idx + 1));

  static List<Glitter> acts =
      List.generate(28, (idx) => Glitter(title: '사도행전', chapter: idx + 1));

  static List<Glitter> romans =
      List.generate(16, (idx) => Glitter(title: '로마서', chapter: idx + 1));

  static List<Glitter> corinthians1 =
      List.generate(16, (idx) => Glitter(title: '고린도전서', chapter: idx + 1));

  static List<Glitter> corinthians2 =
      List.generate(13, (idx) => Glitter(title: '고린도후서', chapter: idx + 1));

  static List<Glitter> galatians =
      List.generate(6, (idx) => Glitter(title: '갈라디아서', chapter: idx + 1));

  static List<Glitter> ephesians =
      List.generate(6, (idx) => Glitter(title: '에베소서', chapter: idx + 1));

  static List<Glitter> philippians =
      List.generate(4, (idx) => Glitter(title: '빌립보서', chapter: idx + 1));

  static List<Glitter> colossians =
      List.generate(4, (idx) => Glitter(title: '골로새서', chapter: idx + 1));

  static List<Glitter> thessalonians1 =
      List.generate(5, (idx) => Glitter(title: '데살로니가전서', chapter: idx + 1));

  static List<Glitter> thessalonians2 =
      List.generate(3, (idx) => Glitter(title: '데살로니가후서', chapter: idx + 1));

  static List<Glitter> timothy1 =
      List.generate(6, (idx) => Glitter(title: '디모데전서', chapter: idx + 1));

  static List<Glitter> timothy2 =
      List.generate(4, (idx) => Glitter(title: '디모데후서', chapter: idx + 1));

  static List<Glitter> titus =
      List.generate(3, (idx) => Glitter(title: '디도서', chapter: idx + 1));

  static List<Glitter> philemon =
      List.generate(1, (idx) => Glitter(title: '빌레몬서', chapter: idx + 1));

  static List<Glitter> hebrews =
      List.generate(13, (idx) => Glitter(title: '히브리서', chapter: idx + 1));

  static List<Glitter> james =
      List.generate(5, (idx) => Glitter(title: '야고보서', chapter: idx + 1));

  static List<Glitter> peter1 =
      List.generate(5, (idx) => Glitter(title: '베드로전서', chapter: idx + 1));

  static List<Glitter> peter2 =
      List.generate(3, (idx) => Glitter(title: '베드로후서', chapter: idx + 1));

  static List<Glitter> john1 =
      List.generate(5, (idx) => Glitter(title: '요한1서', chapter: idx + 1));

  static List<Glitter> john2 =
      List.generate(1, (idx) => Glitter(title: '요한2서', chapter: idx + 1));

  static List<Glitter> john3 =
      List.generate(1, (idx) => Glitter(title: '요한3서', chapter: idx + 1));

  static List<Glitter> jude =
      List.generate(1, (idx) => Glitter(title: '유다서', chapter: idx + 1));

  static List<Glitter> revelation =
      List.generate(22, (idx) => Glitter(title: '요한계시록', chapter: idx + 1));
}
