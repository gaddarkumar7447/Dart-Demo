import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  var colorA = [
    Colors.blue,
    Colors.yellowAccent,
    Colors.blue,
    Colors.indigoAccent,
    Colors.deepOrange,
    Colors.white38,
    Colors.cyan,
    Colors.amberAccent
  ];

  HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    void callBak(){
      print('HEllo');
    }
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Activity'),
        ),
        body:ElevatedButton(
          onPressed: () {
            callBak();
          },
          child: Text('Clicked'),
        )
      /*GridView.builder( gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5, mainAxisSpacing: 3, crossAxisSpacing: 3),itemBuilder: (context, index) {
            return Container(color: colorA[index],);
        },itemCount: colorA.length,)*/
    );
    /*GridView.extent(maxCrossAxisExtent: 100, crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: [
          Container(
            color: colorA[0],
          ),
          Container(
            color: colorA[1],
          ),
          Container(
            color: colorA[2],
          ),
          Container(
            color: colorA[3],
          ),
          Container(
            color: colorA[4],
          ),
          Container(
            color: colorA[5],
          ),
          Container(
            color: colorA[6],
          ),
          Container(
            color: colorA[7],
          ),
          Container(
            color: colorA[0],
          ),
          Container(
            color: colorA[7],
          ),
          Container(
            color: colorA[1],
          ),
          Container(
            color: colorA[2],
          ),
          Container(
            color: colorA[3],
          ),
          Container(
            color: colorA[4],
          ),
          Container(
            color: colorA[5],
          ),
          Container(
            color: colorA[6],
          ),
          Container(
            color: colorA[1],
          ),
          Container(
            color: colorA[0],
          ),
          Container(
            color: colorA[0],
          ),
          Container(
            color: colorA[1],
          ),
          Container(
            color: colorA[2],
          ),
          Container(
            color: colorA[3],
          ),
          Container(
            color: colorA[4],
          ),
          Container(
            color: colorA[5],
          ),
          Container(
            color: colorA[6],
          ),
          Container(
            color: colorA[7],
          ),
          Container(
            color: colorA[0],
          ),
          Container(
            color: colorA[7],
          ),
          Container(
            color: colorA[1],
          ),
          Container(
            color: colorA[2],
          ),
          Container(
            color: colorA[3],
          ),
          Container(
            color: colorA[4],
          ),
          Container(
            color: colorA[5],
          ),
          Container(
            color: colorA[6],
          ),
          Container(
            color: colorA[1],
          ),
          Container(
            color: colorA[0],
          ),
          Container(
            color: colorA[0],
          ),
          Container(
            color: colorA[1],
          ),
          Container(
            color: colorA[2],
          ),
          Container(
            color: colorA[3],
          ),
          Container(
            color: colorA[4],
          ),
          Container(
            color: colorA[5],
          ),
          Container(
            color: colorA[6],
          ),
          Container(
            color: colorA[7],
          ),
          Container(
            color: colorA[0],
          ),
          Container(
            color: colorA[7],
          ),
          Container(
            color: colorA[1],
          ),
          Container(
            color: colorA[2],
          ),
          Container(
            color: colorA[3],
          ),
          Container(
            color: colorA[4],
          ),
          Container(
            color: colorA[5],
          ),
          Container(
            color: colorA[6],
          ),
          Container(
            color: colorA[1],
          ),
          Container(
            color: colorA[0],
          ),
          Container(
            color: colorA[0],
          ),
          Container(
            color: colorA[1],
          ),
          Container(
            color: colorA[2],
          ),
          Container(
            color: colorA[3],
          ),
          Container(
            color: colorA[4],
          ),
          Container(
            color: colorA[5],
          ),
          Container(
            color: colorA[6],
          ),
          Container(
            color: colorA[7],
          ),
          Container(
            color: colorA[0],
          ),
          Container(
            color: colorA[7],
          ),
          Container(
            color: colorA[1],
          ),
          Container(
            color: colorA[2],
          ),
          Container(
            color: colorA[3],
          ),
          Container(
            color: colorA[4],
          ),
          Container(
            color: colorA[5],
          ),
          Container(
            color: colorA[6],
          ),
          Container(
            color: colorA[1],
          ),
          Container(
            color: colorA[0],
          ),
        ]));*/ /*GridView.count(crossAxisCount: 4,
    crossAxisSpacing: 3,
    mainAxisSpacing: 3,
    children: [
      Container(color: colorA[0],),
      Container(color: colorA[1],),
      Container(color: colorA[2],),
      Container(color: colorA[3],),
      Container(color: colorA[4],),
      Container(color: colorA[5],),
      Container(color: colorA[6],),
      Container(color: colorA[7],),
      Container(color: colorA[0],),
      Container(color: colorA[7],),
      Container(color: colorA[1],),
      Container(color: colorA[2],),
      Container(color: colorA[3],),
      Container(color: colorA[4],),
      Container(color: colorA[5],),
      Container(color: colorA[6],),
      Container(color: colorA[1],),
      Container(color: colorA[0],),
      Container(color: colorA[0],),
      Container(color: colorA[1],),
      Container(color: colorA[2],),
      Container(color: colorA[3],),
      Container(color: colorA[4],),
      Container(color: colorA[5],),
      Container(color: colorA[6],),
      Container(color: colorA[7],),
      Container(color: colorA[0],),
      Container(color: colorA[7],),
      Container(color: colorA[1],),
      Container(color: colorA[2],),
      Container(color: colorA[3],),
      Container(color: colorA[4],),
      Container(color: colorA[5],),
      Container(color: colorA[6],),
      Container(color: colorA[1],),
      Container(color: colorA[0],),
      Container(color: colorA[0],),
      Container(color: colorA[1],),
      Container(color: colorA[2],),
      Container(color: colorA[3],),
      Container(color: colorA[4],),
      Container(color: colorA[5],),
      Container(color: colorA[6],),
      Container(color: colorA[7],),
      Container(color: colorA[0],),
      Container(color: colorA[7],),
      Container(color: colorA[1],),
      Container(color: colorA[2],),
      Container(color: colorA[3],),
      Container(color: colorA[4],),
      Container(color: colorA[5],),
      Container(color: colorA[6],),
      Container(color: colorA[1],),
      Container(color: colorA[0],),
      Container(color: colorA[0],),
      Container(color: colorA[1],),
      Container(color: colorA[2],),
      Container(color: colorA[3],),
      Container(color: colorA[4],),
      Container(color: colorA[5],),
      Container(color: colorA[6],),
      Container(color: colorA[7],),
      Container(color: colorA[0],),
      Container(color: colorA[7],),
      Container(color: colorA[1],),
      Container(color: colorA[2],),
      Container(color: colorA[3],),
      Container(color: colorA[4],),
      Container(color: colorA[5],),
      Container(color: colorA[6],),
      Container(color: colorA[1],),
      Container(color: colorA[0],),
      ],)
    );*/
  }
}
