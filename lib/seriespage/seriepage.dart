import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:html/parser.dart';
import 'package:muhendislik_tasarimi/seriespage/seriespagedatail.dart';
import 'package:http/http.dart' as http;

import 'modelBolumSatiri.dart';

class seriepage extends StatefulWidget {
  final String image;
  final int index;
  final String showId;

  seriepage({
    required this.image,
    required this.index,
    required this.showId,
    Key? key,
  }) : super(key: key);

  @override
  State<seriepage> createState() => _seriepageState();
}

class _seriepageState extends State<seriepage> {
  List<Detay> detayListesi = Detay.detayListesi();
  late Detay detay;
  List<String> episodeNames = [];

  Future<void> getData() async {
    final response = await http
        .get(Uri.parse('https://www.tvtime.com/en/show/${widget.showId}'));

    var document = parse(response.body);
    var episodes = document.getElementsByClassName("episode-name");
    List<String> data = [];
    for (var element in episodes) {
      episodeNames.add(element.text.trim());
    }
    print(data);
  }

  @override
  void initState() {
    super.initState();
    detay = detayListesi[widget.index];
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          Column(
            children: [
              Row(
                children: [
                  Hero(
                      tag: widget.image,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 25),
                        child: Container(
                          width: 180,
                          height: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(widget.image),
                                  fit: BoxFit.contain)),
                        ),
                      )),
                  const SizedBox(
                    width: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 25),
                    child: SizedBox(
                      width: 100,
                      height: 400,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 70,
                          ),
                          Text(
                            detay.diziAdi,
                            style: const TextStyle(
                              fontFamily: "DeliciousHandrawn",
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            detay.diziOzeti,
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Material(
                    color: Colors.white,
                    child: SizedBox(
                      height: 50,
                      width: 400,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Bölümler",
                            style: TextStyle(
                              fontFamily: "DeliciousHandrawn",
                              fontSize: 25,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(
                            width: 90,
                          ),
                          const Text(
                            "Bölüm sayısı:",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            detay.bolumKac1,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          SafeArea(
                            child: IconButton(
                                onPressed: () {
                                  getData();
                                  diziBolmSayfa(
                                    context,
                                    detay,
                                  );
                                },
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  size: 32,
                                  color: Colors.black,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const SizedBox(
                width: 15,
              ),
              const Text("Fragmanı aşağıdaki butona tıklayıp izleyebilirsiniz"),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                width: 75,
                height: 40,
                child: InkWell(
                  onTap: () {
                    urlTab();
                  },
                  child: Image.asset("images/youtube.png"),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 0,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }

  void diziBolmSayfa(BuildContext context, Detay detay) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    DiziSayfasi(
                      index: widget.index,
                      detay: detay,
                      showId: detay.showId,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void urlTab() async {
    await FlutterWebBrowser.openWebPage(
        url: detay.fragmanLink,
        );
  }
}
