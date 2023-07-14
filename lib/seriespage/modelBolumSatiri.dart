import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'seriespagedatail.dart';

class DiziSayfasi extends StatefulWidget {
  final int index;
  final Detay detay;
  final String showId;

  const DiziSayfasi({Key? key, required this.index, required this.detay,required this.showId}) : super(key: key);

  @override
  _DiziSayfasiState createState() => _DiziSayfasiState();
}

class _DiziSayfasiState extends State<DiziSayfasi> {
  List<bool> isChecked = [];
  List<String> episodeNames = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

 Future<void> lCheckedState() async {
    SharedPreferences nesne = await SharedPreferences.getInstance();
    for (int i = 0; i < episodeNames.length; i++) {
      isChecked[i] = nesne.getBool('isChecked_$i') ?? false;
    }
  }

  void sCheckedState(int index) async {
    SharedPreferences nesne = await SharedPreferences.getInstance();
    nesne.setBool('isChecked_$index', isChecked[index]);
  }

  Future<void> getData() async {
    final response = await http.get(Uri.parse('https://www.tvtime.com/en/show/${widget.showId}'));

    var document = parse(response.body);
    var episodes = document.getElementsByClassName("episode-name");
    for (var element in episodes) {
      episodeNames.add(element.text.trim()
      );
      isChecked.add(false); 
    }
    await lCheckedState();

    setState(() {}); 
  }

  @override
  Widget build(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.5, 
    child: ListView.builder(
      itemCount: episodeNames.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
          title: Text(episodeNames[index]),
          value: isChecked[index],
          onChanged: (bool? value) {
            setState(() {
              isChecked[index] = value!;
              sCheckedState(index);
            });
          },
        );
      },
    ),
  );
}
}