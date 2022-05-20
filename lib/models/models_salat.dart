class Meals{
  int? id;
  String? name;
  String? detailes;
  String? imageUrl;
  String? cost;
  String? typ;
  String? time;
  int? ingCount;
  int? bannerColor;

  Meals({
    this.id,
    this.name,
    this.detailes,
    this.imageUrl,
    this.time,
    this.ingCount,
    this.bannerColor,
    this.cost,
    this.typ,
  });

  static List<Meals> meals = [
    Meals(
        id: 5,
        name: 'Olivie',
        detailes: 'Ogʼir, qovurilgan taomlarni koʼngil tusamaganda, guruch va "Kulinar"ning kurka '
            'goʼshtili kolbaskalarini qaynating. Ha, adashmadingiz, ularni qaynatsa boʼladi, ularning taʼmi '
            'oʼzgacharoq, lekin oʼsha-oʼsha shirador va suvli chiqadi.Kolbasalarni muzdan tushirmang. \n\nUlarni darhol qaynoq '
            'suvga soling va 5-7 daqiqa davomida pishiring.Tayyor guruchni esa konservalangan makkajoʼxori yoki yashil '
            'noʼxat bilan aralashtirish mumkin.Tayyor!',
        imageUrl: 'assets/olve1.png',
        time: '15 min',
        ingCount: 5,
        bannerColor: 0xffDCC7B1,
        cost: '250 000',
        typ: 'Turkiya'
    ),
    Meals(
        id: 6,
        name: 'Akroshka',
        imageUrl: 'assets/akrosh1.png',
        time: '20 min',
        ingCount: 4,
        bannerColor: 0xffF2DFE1,
        cost: '260 000',
        typ: 'Turkiya'
    ),
    Meals(
        id: 7,
        name: 'Sezr',
        imageUrl: 'assets/sezr1.png',
        time: '16 min',
        ingCount: 3,
        bannerColor: 0xffFFC5A8,
        cost: '900 000',
        typ: 'Turkiya'
    ),
    Meals(
        id: 8,
        name: 'Suzma',
        imageUrl: 'assets/suzma1.png',
        time: '17 min',
        ingCount: 6,
        bannerColor: 0xff71C3A1,
        cost: '320 000',
        typ: 'Turkiya'
    ),
  ];
}