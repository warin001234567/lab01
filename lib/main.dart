import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'detail_screen.dart';
import 'my_custom_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // debugShowCheckedModeBanner: false, //show bar debug
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home: MyHomePage(),
      routes:{
       "/" :(context) => FirstScreen(),
      //  "/" : (context) => MycustomForm(),
        "/second":(context) => SecondScreen(),
        "/detail":(context) => DetailScreen(),
        },
    );
  }
}
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       // debugShowCheckedModeBanner: false, //show bar debug
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("PACKINZG3"),
//       ),
//       body: Text("${counter}"),
//       floatingActionButton: IconButton(
//         icon: Icon(Icons.add),
//         onPressed: () {
//           counter++;
//           print("Counter value $counter");
//         },
//       ),
//     );
//   }
// }

// class TabBarDemo extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     returb MaterialApp(
//       home: DefaultTabController(
//         lenght:3,
//         child: Scaffold(
//           appBar: AppBar(
//             bottom: TabBar(
//               tabs: [
//               Tab(icon: Icon(Icons.directions_car)),
//               tab(icon: Icon(Icons.directions_transit)),
//               Tab(icon: Icon(Icons.directions_bike)),
//               ],
//             ),
//             title: Text('Tabs Demo'),
//           ),
//           body: TabBarView(
//             cildren: [
//               Icon(Icons.directions_car),
//               Icon(Icons.directions_transit),
//               Icon(Icons.directions_bike),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }