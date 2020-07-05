import 'package:flutter/material.dart';
import 'home_card_values.dart';

class HomeView extends StatelessWidget{

  final List<HomeCardValues> daysList = [ //you can add numerical values to this, look at 1manstartup listview cards 
    HomeCardValues("Monday", 0),
    HomeCardValues("Tuesday", 1),
    HomeCardValues("Wednesday", 3),
    HomeCardValues("Thursday", 5),
    HomeCardValues("Friday", 4),
    HomeCardValues("Saturday", 7),
    HomeCardValues("Sunday", 2),
  ];

  Widget build(BuildContext context) {
    return Container(
      color: new Color(0xF8F8F8),
      child: new ListView.builder(
        itemCount: daysList.length,
        itemBuilder: (BuildContext context, int index) => buildDaysCard(context, index)
        ),
    );
  }


  Widget buildDaysCard(BuildContext context, int index){
    final homeCardValue = daysList[index];
    return new Center(
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Card(
          color: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 300,
            height: 115,
            child: Row(children: <Widget>[
              FittedBox(
                child: Container( 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 12, bottom: 8, left: 17, right: 8),
                        child: Row( 
                          children: <Widget>[
                            Text(homeCardValue.day,
                            style: Theme.of(context).textTheme.headline1,
                            ),
                          ],
                        ),
                      ), 
                      Padding( 
                        padding: const EdgeInsets.only(top: 7, bottom: 12, left: 13, right: 8),
                        child: Row( 
                          children: <Widget>[
                            RawMaterialButton(
                              onPressed: () {},
                              elevation: 2.0,
                              fillColor: Colors.black,
                              child: Icon(
                                Icons.arrow_forward,
                                size: 20.0,
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(12.0),
                              shape: CircleBorder(),
                            ),
                          ],
                        ),
                      ), 
                    ],
                  ),
                ),
              ),
              Spacer(),
              Container( 
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 0, left: 8, right: 50),
                      child: Row( 
                        children: <Widget>[
                          Text(homeCardValue.numTasks.toString(),
                          style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                    ), 
                    Padding( 
                      padding: const EdgeInsets.only(top: 0, bottom: 8, left: 8, right: 50),
                      child: Row( 
                        children: <Widget>[
                          Text("Tasks",
                          style: Theme.of(context).textTheme.headline3,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ), 
            ],)
          ),
        ),
      ),
    );
  }
}


// Widget buildDaysCard(BuildContext context, int index){
//     final homeCardValue = daysList[index];
//     return new Center(
//       child: Padding(
//         padding: const EdgeInsets.all(7.0),
//         child: Card(
//           color: Colors.white,
//           elevation: 4,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Container(
//             width: 310,
//             height: 115,
//             child: Row(children: <Widget>[
//               Container( //left section
//                 child: Column(
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.only(top: 12, bottom: 8, left: 13, right: 8),
//                       child: Row( //1st row of left section 
//                         children: <Widget>[
//                           Text(homeCardValue.day,
//                           style: Theme.of(context).textTheme.headline1,
//                           ),
//                         ],
//                       ),
//                     ), //end of 1st row left side
//                     Padding( //2nd row of left section 
//                       padding: const EdgeInsets.only(top: 7, bottom: 8, left: 13, right: 8),
//                       child: Row( //2nd row of left section 
//                         children: <Widget>[
//                           RawMaterialButton(
//                             onPressed: () {},
//                             elevation: 2.0,
//                             fillColor: Colors.black,
//                             child: Icon(
//                               Icons.arrow_forward,
//                               size: 20.0,
//                               color: Colors.white,
//                             ),
//                             padding: EdgeInsets.all(12.0),
//                             shape: CircleBorder(),
//                           ),
//                         ],
//                       ),
//                     ), //end of 2nd row left side
//                   ],
//                 ),
//               ),
//               Spacer(),
//               Container( //right section
//                 child: Column(
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.only(top: 8, bottom: 0, left: 8, right: 50),
//                       child: Row( //1st row of right section 
//                         children: <Widget>[
//                           Text(homeCardValue.numTasks.toString(),
//                           style: Theme.of(context).textTheme.headline2,
//                           ),
//                         ],
//                       ),
//                     ), //end of 1st row right side
//                     Padding( //2nd row of right section 
//                       padding: const EdgeInsets.only(top: 0, bottom: 8, left: 8, right: 50),
//                       child: Row( //2nd row of left section 
//                         children: <Widget>[
//                           Text("Tasks",
//                           style: Theme.of(context).textTheme.headline3,
//                           ),
//                         ],
//                       ),
//                     ), //end of 2nd row right side
//                   ],
//                 ),
//               ), 
//             ],)
//           ),
//         ),
//       ),
//     );
//   }
// }
