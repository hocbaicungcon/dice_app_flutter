import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  // runApp(MyApp());
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _dice1 = 1;
  int _dice2 = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lucky Dices'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(flex: 8),
                Image(
                  image: AssetImage('img/dice' + _dice1.toString() + '.png'),
                  height: 130,
                ),
                Spacer(flex: 2),
                Image(
                  image: AssetImage('img/dice' + _dice2.toString() + '.png'),
                  height: 130,
                ),
                Spacer(flex: 8),
              ],
            ),
            Text(
              _dice1.toString() + _dice2.toString(),
              style: TextStyle(fontSize: 120, color: Color(0xffD80027)),
            )
          ],
        ),
        //     child: Column(
        //   children: [
        //     Text(
        //       _result.toString(),
        //       style: TextStyle(
        //         color: Colors.orange[900],
        //         fontSize: 80,
        //       ),
        //     ),
        //     Image(image: AssetImage('img/dice' + _result.toString() + '.png'))
        //     // Image.asset('img/dice1.png'),
        //   ],
        // )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffD80027),
        onPressed: () async {
          for (var i = 0; i < 20; i++) {
            await new Future.delayed(const Duration(milliseconds: 130));
            setState(() {
              _dice1 = Random().nextInt(6) + 1;
              _dice2 = Random().nextInt(6) + 1;
            });
          }
        },
        child: Icon(
          Icons.shuffle,
        ),
      ),
    );
  }
}
































// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Text(
//           'Phan Văn Phương',
//           textDirection: TextDirection.ltr,
//           style: TextStyle(fontSize: 30, color: Colors.blue),
//         ),
//       ),
//     );
//   }
// }
