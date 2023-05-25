import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';







class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(

          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Cities2(),
          ),
        ),
      ),
    );
  }
}

class Cities2 extends StatefulWidget {
  @override
  _Cities2State createState() => _Cities2State();
}

class _Cities2State extends State<Cities2> {
  String _selectedValue = "Arendal";

  final List<String> _options = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Material( // Wrap with Material widget
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Text("Velg by",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 50,
            ),

            Container(
              width: 300,
              height: 100,
              child: DropdownSearch<String>(

                mode: Mode.MENU,
                showSearchBox: true,
                items: _options,

                onChanged: (value) {

                  setState(() {
                    _selectedValue = value!;
                  });
                  Navigator.pushReplacementNamed(context, "/home", arguments: {
                    "value": _selectedValue,

                  });
                },
                selectedItem: _selectedValue,
                dropdownSearchDecoration: InputDecoration(
                  // Customize the decoration

                  filled: true,
                  fillColor: Colors.white, // Set the background color
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                ),


              ),
            ),
          ],
        ),

      ),
    );
  }
}






//
//
//
//
//
//
//
// class Cities2 extends StatefulWidget {
//
//
//
//   @override
//   State<Cities2> createState() => _Cities2State();
// }
//
// class _Cities2State extends State<Cities2> {
//   final _formKey = GlobalKey<FormState>();
//   String selectedCity = "Arendal";
//   List<String> cities = [
//     'Alta', 'Andenes', 'Arendal', 'Asker', 'Askim', 'Bardufoss', 'Bergen',
//     'Birkeland', 'Bodø', 'Brandbu', 'Brekstad', 'Brevik', 'Bryne', 'Brønnøysund','Dalen',
//     'Drammen', 'Drøbak', 'Egersund', 'Eidsvoll', 'Elverum',     'Fagernes', 'Farsund', 'Fauske', 'Finnsnes', 'Flekkefjord', 'Flisa', 'Flora',
//     'Florø', 'Fosnavåg', 'Fredrikstad', 'Førde', 'Geilo', 'Gjøvik', 'Grimstad','Halden',
//     'Hamar', 'Hammerfest', 'Harstad', 'Haugesund', 'Hokksund',    'Holmestrand', 'Honningsvåg', 'Horten', 'Husnes', 'Hønefoss', 'Jessheim', 'Jørpeland',
//     'Kautokeino', 'Kirkenes', 'Kongsberg', 'Kongsvinger', 'Kopervik', 'Kragerø', 'Kristiansand','Kristiansund',
//     'Krokstadøra', 'Kvinesdal', 'Lakselv', 'Langesund', 'Larvik',    'Leikanger', 'Leirvik', 'Leknes', 'Leksvik', 'Levanger', 'Lierne', 'Lillehammer',
//     'Lillesand', 'Lillestrøm', 'Lom	', 'Lyngdal', 'Mandal', 'Mo i Rana	', 'Molde','Mosjøen',
//     'Moss', 'Mysen', 'Måløy', 'Namsos', 'Narvik',    'Notodden', 'Nærøy', 'Odda', 'Oslo', 'Otta', 'Porsgrunn', 'Rasvag',
//     'Raufoss', 'Risør', 'Rjukan', 'Røldal', 'Røros', 'Røyrvik', 'Sand','Sandefjord',
//     'Sandnes	', 'Sandnessjøen', 'Sandvika', 'Sarpsborg', 'Sauda',    'Setermoen', 'Ski', 'Skien', 'Skudeneshavn', 'Sogndal', 'Sogne', 'Sortland',
//     'Stathelle', 'Stavanger', 'Stavern', 'Steinkjer', 'Stjørdal', 'Stokmarknes', 'Stord','Stryn',
//     'Strömstad', 'Sunndalsøra', 'Svelvik', 'Svolvær', 'Tromsø','Trondheim', 'Tvedestrand', 'Tynset', 'Tønsberg', 'Ulsteinvik',    'Vadsø', 'Vang i Valdres', 'Vanningssundet', 'Vardø', 'Vennesla', 'Verdalsøra', 'Vossevangen',
//     'Åkrehamn', 'Ålesund', 'Åndalsnes'
//     // Add more Norwegian cities here...
//   ];
//
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return  Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//           child:DropdownSearch<String>(
//             popupProps: PopupProps.menu(
//               showSearchBox: true,
//               showSelectedItems: true,
//               disabledItemFn: (String s) => s.startsWith('I'),
//             ),
//             items: cities,
//             dropdownDecoratorProps: DropDownDecoratorProps(
//               dropdownSearchDecoration: InputDecoration(
//                 labelText: "Menu mode",
//                 hintText: "Velg by",
//               ),
//             ),
//             onChanged: print,
//             selectedItem: "Brazil",
//           )
//       ),
//     );
//   }
// }
