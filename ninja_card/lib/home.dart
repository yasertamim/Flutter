

import 'package:flutter/material.dart';
import 'package:ninja_card/city_shared_preferance.dart';
import './Web.dart';
import './Pray.dart';







class Home extends StatefulWidget {



  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};
  String city = "";
  WebScraper1 web = WebScraper1();
  int count = 1;
  DateTime now = DateTime.now();
  bool _isVisible = false;









  @override
  Widget build(BuildContext context) {
    print("hour: ${now.hour}");
    data =  ModalRoute.of(context)?.settings.arguments as Map;
    city = data["value"];
    CitySharedPreferance.setCity(city);

    web.city = city;
    Pray pray = new Pray(date: "", fajer: "", douha: "", doher: "", asser: "", moughreb: "", ishaa: "", dag: "", jumma: "");

  //  print("city is:  ${city}");
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body:

      FutureBuilder(


          future: web.extractData(count),
          builder: (_, snapShot) {

            if (snapShot.hasData) {
              print("success");
              print("the city: ${web.city}");
                          if(city == "Arendal"){
                pray.date = snapShot.data![0];
                pray.fajer = snapShot.data![2];
                pray.douha = snapShot.data![3];
                pray.doher = snapShot.data![4];
                pray.asser = snapShot.data![5];
                pray.moughreb = snapShot.data![6];
                pray.ishaa = snapShot.data![7];
                pray.dag = snapShot.data![1];
                pray.jumma = snapShot.data![8];


              }else{
                pray.date = snapShot.data![0];
                pray.fajer = snapShot.data![1];
                pray.douha = snapShot.data![2];
                pray.doher = snapShot.data![3];
                pray.asser = snapShot.data![4];
                pray.moughreb = snapShot.data![5];
                pray.ishaa = snapShot.data![6];
                pray.dag = snapShot.data![7];
                pray.jumma = snapShot.data![8];
              }

                if(city == "Arendal"){
                  _isVisible = true;
                }
              return

                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 60,

                          ),

                          Text(''),
                          Image.asset(
                            'assets/kaba5.png',
                            fit: BoxFit.contain,
                            height: 100,
                          ),
                          Container(
                          ),
                          ElevatedButton(
                            style: ButtonStyle(

                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Colors.grey[900]!),
                                foregroundColor: MaterialStateProperty.all<Color>(
                                    Colors.grey[900]!)),

                            onPressed: () {

                              Navigator.pushReplacementNamed(context, "/cities2", arguments: {


                              });
                            },
                            child: Text("Velg by",
                              style: TextStyle(
                                  color: Colors.amber
                              ),),
                          ),
                        ],

                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text("${city}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,

                              ),),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(pray.dag.toString()+" ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0
                            ),),
                          Text(pray.date,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0
                            ),),

                        ],
                      ),
                      Row(

                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),

                                ),
                                padding: EdgeInsets.all(20.0),

                                child: Text("Fajer",
                                  style: TextStyle(

                                      color: Colors.amber,
                                      fontSize: 16.0
                                  ),)
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(


                            ),
                          ),

                          Expanded(
                            flex: 2,
                            child: Container(

                              child: Text(pray.fajer,
                                style: TextStyle(

                                    color: Colors.amber,
                                    fontSize: 16.0
                                ),),
                            ),
                          ),

                        ],
                      ),
                      Row(

                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),

                                ),
                                padding: EdgeInsets.all(20.0),

                                child: Text("Sol opp",
                                  style: TextStyle(

                                      color: Colors.amber,
                                      fontSize: 16.0
                                  ),)
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(


                            ),
                          ),

                          Expanded(
                            flex: 2,
                            child: Container(

                              child: Text(pray.douha,
                                style: TextStyle(

                                    color: Colors.amber,
                                    fontSize: 16.0
                                ),),
                            ),
                          ),

                        ],
                      ),
                      Row(

                        children: <Widget>[
                          Expanded(
                            flex: 3,


                            child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),

                                ),
                                padding: EdgeInsets.all(20.0),
                                child: Text("Duhr",
                                  style: TextStyle(

                                      color: Colors.amber,
                                      fontSize: 16.0
                                  ),)

                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(


                            ),
                          ),

                          Expanded(
                            flex: 2,
                            child: Container(

                              child: Text(pray.doher,
                                style: TextStyle(

                                    color: Colors.amber,
                                    fontSize: 16.0
                                ),),
                            ),
                          ),

                        ],
                      ),
                      Row(

                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),

                                ),
                                padding: EdgeInsets.all(20.0),

                                child: Text("Aser",
                                  style: TextStyle(

                                      color: Colors.amber,
                                      fontSize: 16.0
                                  ),)
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(


                            ),
                          ),

                          Expanded(
                            flex: 2,
                            child: Container(

                              child: Text(pray.asser,
                                style: TextStyle(

                                    color: Colors.amber,
                                    fontSize: 16.0
                                ),),
                            ),
                          ),

                        ],
                      ),
                      Row(

                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),

                                ),
                                padding: EdgeInsets.all(20.0),

                                child: Text("Sol ned",
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 16.0
                                  ),)
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(


                            ),
                          ),

                          Expanded(
                            flex: 2,
                            child: Container(

                              child: Text(pray.moughreb,
                                style: TextStyle(

                                    color: Colors.amber,
                                    fontSize: 16.0
                                ),),
                            ),
                          ),

                        ],
                      ),
                      Row(

                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),

                                ),
                                padding: EdgeInsets.all(20.0),

                                child: Text("Ishaa",
                                  style: TextStyle(

                                      color: Colors.amber,
                                      fontSize: 16.0
                                  ),)
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(


                            ),
                          ),

                          Expanded(
                            flex: 2,
                            child: Container(

                              child: Text(pray.ishaa,
                                style: TextStyle(

                                    color: Colors.amber,
                                    fontSize: 16.0
                                ),),
                            ),
                          ),

                        ],
                      ),

                      Visibility(
                        visible: _isVisible,
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[700],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4,
                                  offset: Offset(4, 6), // Shadow position
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(20.0),


                            child: Text("${pray.jumma}",
                              style: TextStyle(

                                  color: Colors.white70,
                                  fontSize: 16.0
                              ),)
                        ),
                      ),




                    ],
                  ),
                );
            }
            else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }

      ),


    );
  }
}
