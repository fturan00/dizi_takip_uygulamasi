import 'package:flutter/material.dart';

import 'seriespage/seriepage.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  size: 25,
                  color: Colors.black,
                ))
          ],
          backgroundColor: const Color.fromARGB(255, 210, 204, 204),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
            child: Container(
              child: const Text(
                "Movie Recorder",
                style: TextStyle(
                    fontFamily: "RobotoSlab",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.amber,
                width: double.infinity,
                height: 50,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                        onTap: () {},
                        child: const Image(
                          image: AssetImage('images/hbo.png'),
                        )),
                    const SizedBox(
                      width: 30,
                    ),
                    InkWell(
                        onTap: () {},
                        child: const Image(
                          image: AssetImage('images/netflix.png'),
                          height: 40,
                        )),
                    const Text(
                      "Netflix",
                      style: TextStyle(
                          fontFamily: "DeliciousHandrawn", fontSize: 17),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    InkWell(
                        onTap: () {},
                        child: const Image(
                          image: AssetImage('images/prime.png'),
                          width: 40,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Amazon",
                      style: TextStyle(
                          fontFamily: "DeliciousHandrawn", fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 210),
              child: Container(
                child: const Text(
                  "en popüler diziler +",
                  style:
                      TextStyle(fontFamily: "DeliciousHandrawn", fontSize: 17),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: SizedBox(
                  width: double.infinity,
                  height: 175,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  seriepage(image: 'images/netflix/strangert.jpg', index: 0, showId: '305288',),
                            ));
                          },
                          child: Hero(
                            tag: 'images/netflix/strangert.jpg',
                            child: Container(
                              child: const Image(
                                image: AssetImage('images/netflix/strangert.jpg'),
                                width: 100,
                              ),
                            ),
                          )),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  seriepage(image: 'images/prime/boys.jpg', index: 1, showId: '355567',),
                            ));
                          },
                          child: Hero(
                            tag: 'images/prime/boys.jpg',
                            child: Container(
                              child: const Image(
                                image: AssetImage('images/prime/boys.jpg'),
                                width: 100,
                              ),
                            ),
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/hbo/got.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/squid.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/wednesday.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/hbo/lastof.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/hbo/houseof.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/prime/upload.jpg'),
                            width: 100,
                          )),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 270),
              child: Container(
                child: const Text(
                  "tüm diziler +",
                  style:
                      TextStyle(fontFamily: "DeliciousHandrawn", fontSize: 17),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: SizedBox(
                  width: double.infinity,
                  height: 175,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/hbo/chernobyl.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/1899.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/vikings.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/prime/upload.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/prime/utopia.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/strangert.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/arcane.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/hbo/got.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/hbo/euphoria.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/dark.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/hbo/rain.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/archive.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/prime/boys.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/hbo/west.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/hbo/wire.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/blackmirror.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/squid.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/locke.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/rick.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/hbo/hisdark.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/prime/american.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/prime/goodomen.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/snow.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/bojack.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/prime/swarm.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/prime/oldtodie.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/wednesday.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/titans.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/pretector.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/prime/devil.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/prime/jackryan.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/hbo/euphoria.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/prime/kamen.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/netflix/locke.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/prime/hunter.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/hbo/lastof.jpg'),
                            width: 100,
                          )),
                      InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('images/hbo/houseof.jpg'),
                            width: 100,
                          )),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
