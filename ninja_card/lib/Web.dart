
import 'package:http/http.dart' as http;

import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:html/parser.dart' as parser;
import 'package:intl/intl.dart';
import './Pray.dart';



class WebScraper1 {
  String? city ;
  String url =
      "https://iksa.no/arendal-bonnetider-aar/";
 String url2 = "https://iksa.no/";
 String url3 = "https://www.islam.no/praktisk_info/bonnetider_i_dag";







  Future<List<String>> extractData(int count) async {
    http.Response response = await http.get(Uri.parse(url));
    http.Response response2 = await http.get(Uri.parse(url2));
    http.Response response3 = await http.get(Uri.parse(url3));
    List<String> prays = [];
    String day = DateFormat('EEEE').format(DateTime.now());
    String date2 = DateFormat('dd.MM.yyyy ').format(DateTime.now());
    var days = {"Monday":"Mandag", "Tusday":"Tirsdag", "Wednesday":"Onsdag", "Thursday":"Torsdag", "Friday":"Fredag"};
    String? dayConverted = days[day];

    if (response.statusCode == 200) {
      final html = parser.parse(response.body);
      final html2 = parser.parse(response2.body);
      final html3 = parser.parse(response3.body);

      int c = 0;

      print("the day is: ${day}");
      final table = html.body?.querySelectorAll("p");
      print(table?.length);

      if (city == "Arendal") {
        try {
          final date = html2.body?.getElementsByTagName("tr")[count]
              .children[0];
          final dag = html2.body?.getElementsByTagName("tr")[count].children[1];
          final fajer = html2.body?.getElementsByTagName("tr")[count]
              .children[2];
          final douha = html2.body?.getElementsByTagName("tr")[count]
              .children[3];
          final doher = html2.body?.getElementsByTagName("tr")[count]
              .children[4];
          final asser = html2.body?.getElementsByTagName("tr")[count]
              .children[5];
          final moughreb = html2.body?.getElementsByTagName("tr")[count]
              .children[6];
          final ishaa = html2.body?.getElementsByTagName("tr")[count]
              .children[7];
          final jumma = html2.body?.getElementsByTagName("p")[1];

          prays.add(date!.text.toString());
          prays.add(dag!.text.toString());
          prays.add(fajer!.text.toString());
          prays.add(douha!.text.toString());
          prays.add(doher!.text.toString());
          prays.add(asser!.text.toString());
          prays.add(moughreb!.text.toString());
          prays.add(ishaa!.text.toString());
          prays.add(jumma!.text.toString());
        } catch (e) {
          print(e);
        }
      }
      else {
        try {
          final data = html3.body?.getElementsByTagName("tr");

          for(var row in data!) {
            if (row.children[0].text == city) {
              prays.add(date2.toString());
              prays.add(row.children[1]!.text.toString());
              prays.add(row.children[2]!.text.toString());
              prays.add(row.children[3]!.text.toString());
              prays.add(row.children[4]!.text.toString());

              prays.add(row.children[7]!.text.toString());
              prays.add(row.children[8]!.text.toString());
              prays.add(dayConverted!);
              prays.add("Jumma");
              break;
            }
          }




        } catch (e) {
          print(e);
        }
      }
    }


      print("prays: ${prays}");

    return prays;
  }
}