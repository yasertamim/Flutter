import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:intl/intl.dart';
import './Web.dart';
import './Pray.dart';





void main() => runApp(MaterialApp(

  // i used this statement to remove the debug strip from appbar
    debugShowCheckedModeBanner: false,

  home: NinjaCard()
));



int numburOfDay(String date){
  int res = 0;
  int days = int.parse(date.substring(0,2));
  print(days);
  int month =int.parse(date.substring(3,5));
  print("month $month");
  if(month ==1){
    res+= days;
  }
  if(month ==2){
    res+= (days + 31);
  }
  if(month ==3){
    res+= (days + 59);
  }
  if(month ==4){
    res+= (days + 90);
  }
  if(month ==5){
    res+= (days + 120);
  }
  if(month ==6){
    res+= (days + 151);
  }
  if(month ==7){
    res+= (days + 181);
  }
  if(month ==8){
    res+= (days + 212);
  }
  if(month ==9){
    res+= (days + 243);
  }
  if(month ==10){
    res+= (days + 273);
  }
  if(month ==11){
    res+= (days + 304);
  }
  if(month ==12){
    res+= (days + 334);
  }


  return res;
}




class NinjaCard extends StatefulWidget {



  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {


  WebScraper1 web = WebScraper1();
  int count = 1;
  DateTime now = DateTime.now();
  // int hour = int.parse(DateFormat('kk').toString());
  // int minute = int.parse(DateFormat('mm').toString());




  // bool checkTime(String prayTime){
  //   bool check = false;
  //   int hour = int.parse(prayTime.substring(0,2));
  //   int minute = int.parse(prayTime.substring(3,4));
  //
  //
  //
  //   return check;
  // }



  @override
  Widget build(BuildContext context) {
    print("hour: ${now.hour}");
    return Scaffold(
      backgroundColor: Colors.grey[900],
        // appBar: AppBar(
        //   title: Row(
        //
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text(''),
        //       Image.asset(
        //         'assets/kaba5.png',
        //         fit: BoxFit.contain,
        //         height: 100,
        //       ),
        //       Container()
        //     ],
        //
        //   ),
        //
        //   // leading: Padding(
        //   //
        //   //   padding:EdgeInsets.all(8.0),
        //   //   child: Image.asset(
        //   //     "assets/kaba5.png",
        //   //   ),
        //   // ),
        //
        //   backgroundColor: Colors.grey[850],
        //
        //   // to git rid of drop shadow under the appbar
        //   elevation: 0.0,
        // ),
      body:

          FutureBuilder(


          future: web.extractData(count),
          builder: (_, snapShot) {

            if (snapShot.hasData) {
              print("success");

              Pray pray = Pray(date: snapShot.data![0], fajer: snapShot.data![2], douha: snapShot.data![3],
                  doher: snapShot.data![4], asser: snapShot.data![5], moughreb: snapShot.data![6], ishaa: snapShot.data![7],dag: snapShot.data![1],jumma: snapShot.data![8]);

              return

                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(''),
                          Image.asset(
                            'assets/kaba5.png',
                            fit: BoxFit.contain,
                            height: 100,
                          ),
                          Container(
                          )
                        ],

                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                           // margin: EdgeInsets.fromLTRB(95.0, 0.0, 0.0, 0.0),
                            child: Text("Bønnetider i Arendal",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20.0,

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
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey,
                                  //     blurRadius: 4,
                                  //     offset: Offset(4, 6), // Shadow position
                                  //   ),
                                  // ],
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
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey,
                                  //     blurRadius: 4,
                                  //     offset: Offset(4, 6), // Shadow position
                                  //   ),
                                  // ],
                                ),
                                padding: EdgeInsets.all(20.0),

                                child: Text("Douha",
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
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey,
                                  //     blurRadius: 4,
                                  //     offset: Offset(4, 6), // Shadow position
                                  //   ),
                                  // ],
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
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey,
                                  //     blurRadius: 4,
                                  //     offset: Offset(4, 6), // Shadow position
                                  //   ),
                                  // ],
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
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey,
                                  //     blurRadius: 4,
                                  //     offset: Offset(4, 6), // Shadow position
                                  //   ),
                                  // ],
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
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey,
                                  //     blurRadius: 4,
                                  //     offset: Offset(4, 6), // Shadow position
                                  //   ),
                                  // ],
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

                      Container(
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


                      // Row(
                      //
                      //     children: <Widget>[
                      //     Expanded(
                      //     flex: 2,
                      //       child: Container(
                      //         child: Text(""),
                      //       ),
                      //     ),
                      //     Expanded(
                      //       flex: 4,
                      //       child: ElevatedButton(
                      //         style: ElevatedButton.styleFrom(
                      //           primary: Colors.grey[700],
                      //           fixedSize: Size.fromWidth(100),
                      //           padding: EdgeInsets.all(10),
                      //         ),
                      //         child: Text("Neste"),
                      //         onPressed: () {
                      //           // String forrige = pray.date.substring(1,2).toString();
                      //           // print(forrige);
                      //           setState(() {
                      //             // int temp = int.parse(forrige)+ 3;
                      //             // count = temp -1;
                      //             // print(" count $count");
                      //
                      //             int n = numburOfDay(pray.date);
                      //             print(n);
                      //             if(count == 1){
                      //               count+=1;
                      //             }
                      //             count += 1;
                      //             print(count);
                      //           });
                      //           //Code Here
                      //         }),
                      //     ),
                      //     Expanded(
                      //       flex: 2,
                      //       child: Container(
                      //          child: Text(""),
                      //       ),
                      //     ),
                      //     Expanded(
                      //       flex: 4,
                      //       child: ElevatedButton(
                      //           style: ElevatedButton.styleFrom(
                      //             primary: Colors.grey[700],
                      //             fixedSize: Size.fromWidth(100),
                      //             padding: EdgeInsets.all(10),
                      //           ),
                      //           child: Text("Forrige"),
                      //           onPressed: () {
                      //             setState(() {
                      //               // int temp = int.parse(forrige)+ 3;
                      //               // count = temp -1;
                      //               // print(" count $count");
                      //
                      //               int n = numburOfDay(pray.date);
                      //               print(n);
                      //              if(count >= 2){
                      //                count -= 1;
                      //              }
                      //              if(count ==1){
                      //                count+= 0;
                      //              }
                      //
                      //
                      //               print(count);
                      //             });
                      //             //Code Here
                      //           }),
                      //     ),
                      //     Expanded(
                      //       flex: 2,
                      //       child: Container(
                      //         child: Text(""),
                      //       ),
                      //     ),
                      //
                      //
                      //
                      //
                      //   ],
                      // ),

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


