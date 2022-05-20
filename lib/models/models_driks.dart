class Driks{
  int? id;
  String? name;
  String? detailes;
  String? imageUrl;
  String? cost;
  String? typ;
  String? time;
  int? ingCount;
  int? bannerColor;

  Driks({
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

  static List<Driks> drink = [
    Driks(
        id: 1,
        name: 'PEPSI',
        detailes: 'Ogʼir, qovurilgan taomlarni koʼngil tusamaganda, guruch va "Kulinar"ning kurka '
            'goʼshtili kolbaskalarini qaynating. Ha, adashmadingiz, ularni qaynatsa boʼladi, ularning taʼmi '
            'oʼzgacharoq, lekin oʼsha-oʼsha shirador va suvli chiqadi.Kolbasalarni muzdan tushirmang. \n\nUlarni darhol qaynoq '
            'suvga soling va 5-7 daqiqa davomida pishiring.Tayyor guruchni esa konservalangan makkajoʼxori yoki yashil '
            'noʼxat bilan aralashtirish mumkin.Tayyor!',
        imageUrl: 'assets/pepsi1.png',
        time: '15 min',
        ingCount: 5,
        bannerColor: 0xffDCC7B1,
        cost: '250 000',
        typ: 'O`ZB'
    ),
    Driks(
        id: 2,
        name: 'COLA',
        imageUrl: 'assets/pepsi1.png',
        time: '20 min',
        ingCount: 4,
        bannerColor: 0xffF2DFE1,
        cost: '260 000',
        typ: 'O`ZB'
    ),
    Driks(
        id: 3,
        name: 'Olma Sharbati',
        imageUrl: 'assets/sok1.png',
        time: '16 min',
        ingCount: 3,
        bannerColor: 0xffFFC5A8,
        cost: '900 000',
        typ: 'O`ZB'
    ),
    Driks(
        id: 4,
        name: 'Choy',
        imageUrl: 'assets/choy1.png',
        time: '17 min',
        ingCount: 6,
        bannerColor: 0xff71C3A1,
        cost: '320 000',
        typ: 'O`ZB'
    ),
  ];
}