import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:http/http.dart' as http;

import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:html/parser.dart' as parser;
import 'package:intl/intl.dart';
import './Pray.dart';



class WebScraper1 {
  String url =
      "https://iksa.no/arendal-bonnetider-aar/";
 String url2 = "https://iksa.no/";



  Future<List<String>> extractData(int count) async {
    http.Response response = await http.get(Uri.parse(url));
    http.Response response2 = await http.get(Uri.parse(url2));
    List<String> prays = [];



    if (response.statusCode == 200) {
      final html = parser.parse(response.body);
      final html2 = parser.parse(response2.body);

      int c = 0;


      final table = html.body?.querySelectorAll("p");
      print(table?.length);





        try {



          // final table = html.body?.querySelector(".header-inner")?.children[0].children;
          // print("elenent ${table?.length}");

          // table?.forEach((element) {
          //
          //   c+= 1;
          // });
          // print(c);
         // print("table ${table?.length}");
          final date = html2.body?.getElementsByTagName("tr")[count].children[0];
          final dag = html2.body?.getElementsByTagName("tr")[count].children[1];
          final fajer = html2.body?.getElementsByTagName("tr")[count].children[2];
          final douha = html2.body?.getElementsByTagName("tr")[count].children[3];
          final doher = html2.body?.getElementsByTagName("tr")[count].children[4];
          final asser = html2.body?.getElementsByTagName("tr")[count].children[5];
          final moughreb = html2.body?.getElementsByTagName("tr")[count].children[6];
          final ishaa = html2.body?.getElementsByTagName("tr")[count].children[7];
          final jumma = html2.body?.getElementsByTagName("p")[1];
          // print(date!.text);
          // print(dag!.text);
          // print(fajer!.text);
          // print(douha!.text);
          // print(doher!.text);
          // print(asser!.text);
          // print(moughreb!.text);
          // print(ishaa!.text);
          prays.add(date!.text.toString());
          prays.add(dag!.text.toString());
          prays.add(fajer!.text.toString());
          prays.add(douha!.text.toString());
          prays.add(doher!.text.toString());
          prays.add(asser!.text.toString());
          prays.add(moughreb!.text.toString());
          prays.add(ishaa!.text.toString());
          prays.add(jumma!.text.toString());

          // Create an alarm at 23:59



          // prays.add(Pray(date: ));
        } catch (e) {
          print(e);
        }
      }


    return prays;
  }
}