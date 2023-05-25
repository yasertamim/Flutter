

import 'package:flutter/material.dart';
import './Web.dart';
import './Pray.dart';







class Cities extends StatefulWidget {



  @override
  State<Cities> createState() => _CitiesState();
}

class _CitiesState extends State<Cities> {

  String selectedCity = "Oslo";
  List<String> cities = [
    'Alta', 'Andenes', 'Arendal', 'Asker', 'Askim', 'Bardufoss', 'Bergen',
    'Birkeland', 'Bodø', 'Brandbu', 'Brekstad', 'Brevik', 'Bryne', 'Brønnøysund','Dalen',
    'Drammen', 'Drøbak', 'Egersund', 'Eidsvoll', 'Elverum',     'Fagernes', 'Farsund', 'Fauske', 'Finnsnes', 'Flekkefjord', 'Flisa', 'Flora',
    'Florø', 'Fosnavåg', 'Fredrikstad', 'Førde', 'Geilo', 'Gjøvik', 'Grimstad','Halden',
    'Hamar', 'Hammerfest', 'Harstad', 'Haugesund', 'Hokksund',    'Holmestrand', 'Honningsvåg', 'Horten', 'Husnes', 'Hønefoss', 'Jessheim', 'Jørpeland',
    'Kautokeino', 'Kirkenes', 'Kongsberg', 'Kongsvinger', 'Kopervik', 'Kragerø', 'Kristiansand','Kristiansund',
    'Krokstadøra', 'Kvinesdal', 'Lakselv', 'Langesund', 'Larvik',    'Leikanger', 'Leirvik', 'Leknes', 'Leksvik', 'Levanger', 'Lierne', 'Lillehammer',
    'Lillesand', 'Lillestrøm', 'Lom	', 'Lyngdal', 'Mandal', 'Mo i Rana	', 'Molde','Mosjøen',
    'Moss', 'Mysen', 'Måløy', 'Namsos', 'Narvik',    'Notodden', 'Nærøy', 'Odda', 'Oslo', 'Otta', 'Porsgrunn', 'Rasvag',
    'Raufoss', 'Risør', 'Rjukan', 'Røldal', 'Røros', 'Røyrvik', 'Sand','Sandefjord',
    'Sandnes	', 'Sandnessjøen', 'Sandvika', 'Sarpsborg', 'Sauda',    'Setermoen', 'Ski', 'Skien', 'Skudeneshavn', 'Sogndal', 'Sogne', 'Sortland',
    'Stathelle', 'Stavanger', 'Stavern', 'Steinkjer', 'Stjørdal', 'Stokmarknes', 'Stord','Stryn',
    'Strömstad', 'Sunndalsøra', 'Svelvik', 'Svolvær', 'Tromsø','Trondheim', 'Tvedestrand', 'Tynset', 'Tønsberg', 'Ulsteinvik',    'Vadsø', 'Vang i Valdres', 'Vanningssundet', 'Vardø', 'Vennesla', 'Verdalsøra', 'Vossevangen',
    'Åkrehamn', 'Ålesund', 'Åndalsnes'
    // Add more Norwegian cities here...
  ];



  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Text(
              "Velg by",
              style: TextStyle(
                fontSize: 18.0,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),


            Container(
              padding: EdgeInsets.all(16.0),
              child: DropdownButton<String>(
                value: selectedCity,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedCity = newValue!;

                  });
                  Navigator.pushReplacementNamed(context, "/home", arguments: {
                    "value": selectedCity,

                  });
                },
                items: cities.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(

                    value: value,
                    child: Text(
                        style: TextStyle(


                          color: Colors.amber,
                        ),
                        value),
                  );
                }).toList(),
                hint: Text('Select a city'),
              ),
            ),
          ],
        )
      ),
    );
  }
}
