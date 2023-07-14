class Detay {
  final String diziAdi;
  final String diziOzeti;
  final String showId;
  final String bolumKac1;
  final String fragmanLink;

  Detay({
    required this.diziAdi,
    required this.diziOzeti,
    required this.bolumKac1,
    required this.showId,
    required this.fragmanLink,
  });

  static List<Detay> detayListesi() {
    return [
      Detay(
          diziAdi: 'Stranger Things',
          diziOzeti:
              'Ufak bir kasabada küçük bir çocuk kaybolunca, gizli deneyler, korkutucu doğaüstü güçler ve tuhaf bir küçük kızın da parçası olduğu bir gizem ortaya çıkar.',
          bolumKac1: '28',
          showId: '305288',
          fragmanLink:'https://www.youtube.com/watch?v=b9EkMc79ZSU'),
      Detay(
          diziAdi: 'The Boys',
          diziOzeti:
              'Aynı adlı çizgi romandan uyarlanmış The Boys dizisi, süper kahramanları hizaya getirmeye çalışan bir CIA ekibi etrafında gerçekleşen bir aksiyon hikayesini anlatıyor. Billy Butcher ve ekibi süper kahramanların arkasındaki gücü keşfettikçe başlarını zannetiklerinden çok daha büyük bir belaya soktuklarını fark ediyorlar.',
          bolumKac1: '8',
          showId: '355567',
          fragmanLink:'https://www.youtube.com/watch?v=M1bhOaLV4FU'),
    ];
  }
}
