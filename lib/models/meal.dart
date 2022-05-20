class Meal {
  int? id;
  String? name;
  String? detailes;
  String? imageUrl;
  String? cost;
  String? typ;
  String? time;
  int? ingCount;
  int? bannerColor;

  Meal({
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

  static List<Meal> meal = [
    Meal(
        id: 1,
        name: 'Osh',
        detailes:
            '1 kg qo’y go’shti \n 1 kg sabzi 300 ml o’simlik moyi \n 4 ta o’rtacha piyoz \n 2 ta achchiq qalampir \n 2 bosh sarimsoq \n 1 osh qoshiq zira \n 1 choy qoshiq kashnich urug’larita’bga ko’ra tuz.',
        imageUrl: 'assets/osh1.png',
        time: '15 min',
        ingCount: 5,
        bannerColor: 0xffDCC7B1,
        cost: '250 000',
        typ: 'Turkiya'),
    Meal(
        id: 2,
        name: 'Chuchvara',
        detailes: "Xamiri uchun: \n Un — 600 gramm; \n Suv — 250ml; \n Tuxum — 1 dona; \n Tuz — 1 choy qoshiq. \n\n Qiymasi uchun: \n Mol go’shti qiymasi — 500 gramm; \n Piyoz — 2 dona; \n Ta’bga ko’ra tuz, murch, lavr yaprog’i.",
        imageUrl: 'assets/shorva1.png',
        time: '20 min',
        ingCount: 4,
        bannerColor: 0xffF2DFE1,
        cost: '260 000',
        typ: 'Turkiya'),
    Meal(
        id: 3,
        name: 'Qozon Kabob',
        detailes: "1 kg mol go’shti; \n 100 gramm qo’y yog’i; \n 2 kg kartoshka; \n 2 ta o’rtacha kattalikdagi piyoz; \n 3 ta o’rtacha kattalikdagi suvli pomidor; \n 100 ml o’simlik moyi; \n3 osh qoshiq ziravorlar aralashmasi (yanchilgan zira va kashnich urug’lari, quritilgan rayhon, qizil achchiq qalampir); \n Tuz; \n 5-7 shoxchadan shivit va kashnich.",
        imageUrl: 'assets/qozon1.png',
        time: '16 min',
        ingCount: 3,
        bannerColor: 0xffFFC5A8,
        cost: '900 000',
        typ: 'Turkiya'),
    Meal(
        id: 4,
        name: 'Qaynatma Sho`rva',
        detailes:
            "500 gramm qo'y qovurg'alari \n 400 gramm mol go'shti lahm \n 100 gamm dumba \n 300 gramm har xil rangli bulg'or qalampiri \n 300 gramm kartoshka \n 200 gramm sabzi \n 200 gramm piyoz \n 4 ta sarimsoqpiyoz tishchasi \n 200 gramm pomidor",
        imageUrl: 'assets/qaynatma1.png',
        time: '17 min',
        ingCount: 6,
        bannerColor: 0xff71C3A1,
        cost: '320 000',
        typ: 'Turkiya'),
  ];
}
