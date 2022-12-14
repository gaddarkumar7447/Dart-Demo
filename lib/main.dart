import 'package:dart_pro/ui_design/SecondActivity.dart';
import 'package:dart_pro/ui_design/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var email = TextEditingController();
    var pass = TextEditingController();
    DateTime now = DateTime.now();
    String convertedDateTime =
        "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}";
    String str = DateFormat('hh:mm:ss a').format(now);
    var arrName = [
      'Gaddar',
      'Kumar',
      'Chaudhary',
      'Shivam',
      'Ranjeet',
      'Ghan',
      'Gaddar',
      'Kumar',
      'Chaudhary',
      'Shivam',
      'Ranjeet',
      'Ghan',
      'Gaddar',
      'Kumar',
      'Chaudhary',
      'Shivam',
      'Ranjeet',
      'Ghan'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 320,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  obscureText: true,
                  controller: pass,
                  decoration: const InputDecoration(
                      hintText: 'Enter the password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )),
            Container(
              height: 20,
            ),
            SizedBox(
              width: 320,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: email,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: IconButton(
                        onPressed: () {
                          print('$key');
                        },
                        icon: const Icon(Icons.remove_red_eye)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellowAccent)),
                    hintText: 'Enter the email',
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 220,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    String s = email.text.toString();
                    String sr = pass.text.toString();
                    print('Email : $s | pass : $sr');
                  },
                  child: Text('LogIn')),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '$str',
                style: TextStyle(fontSize: 25),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Current Time')),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 330,
              child: TextField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? datePicker = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2021),
                      lastDate: DateTime(2025));
                  if (datePicker != null) {
                    print(
                        '${datePicker.day}.${datePicker.month}.${datePicker.year}');
                  }
                },
                child: Text('Select date')),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? time = await showTimePicker(
                        initialEntryMode: TimePickerEntryMode.input,
                        context: context,
                        initialTime: TimeOfDay.now());
                    if (time != null) {
                      print('${time.hour}:${time.minute}');
                    }
                  },
                  child: Text('Select Time'),
                ),
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    'Gaddar Kumar Chaudhary',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Visibility(
                    child: Icon(
                  Icons.verified,
                  color: Colors.blue,
                ))
              ],
            ),
            ElevatedButton(
                onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen1()))
                    },
                child: Text('Grid View'))
          ],
        ),
      ),
      /*Center(
          child: InkWell(
            onTap: () => {
            print('hello gaddar')
            },
            child: Card(
              elevation: 5,
              shadowColor: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text('Hello', style: TextStyle(fontSize: 25), ),
              ),
            ),
          ),
        )*/
    );

    /*Column(
          children: [
            Text('Gaddar', style: Theme.of(context).textTheme.headline6,),
            Text('Kumar', style: TextStyle(fontSize: 25, color: Colors.blueAccent, fontWeight: FontWeight.w400),),
            Text('Chaudhary', style: TextStyle(fontSize: 25, color: Colors.blueAccent, fontWeight: FontWeight.w500),),
            Text('SKY', style: textStyle(),)
          ],
        )*/

    /*ListView.separated(
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: Text('$index'),
                  title: Text(arrName[index]),
                  subtitle: const Text("Name"),
                  trailing: const Icon(Icons.add),
                  onTap: () => {print('$index')},
                ),
              ],
            );
          },
          itemCount: arrName.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 20,
              color: Colors.indigo,
            );
          },
        )*/
    /*Center(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.amber,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.cyan,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.deepOrange,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.black26,
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          )

        )*/
    /*Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.lightBlue,
          child: Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(11),
                border: Border.all(
                  color: Colors.amberAccent,
                  width: 2,
                ),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.white70,
                    blurStyle: BlurStyle.normal
                  )
                ]
              ),
            ),
          ),
        )*/

    /*ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                arrName[index],
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
              ),
            );
          },
          itemCount: arrName.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(height: 50, thickness: 5, color: Colors.black26,);
          },
        )*/
    /*ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('One', style: TextStyle(fontSize: 25, color: Colors.lightBlue), ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Two', style: TextStyle(fontSize: 25, color: Colors.lightBlue), ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Three', style: TextStyle(fontSize: 25, color: Colors.lightBlue), ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Four', style: TextStyle(fontSize: 25, color: Colors.lightBlue), ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Five', style: TextStyle(fontSize: 25, color: Colors.lightBlue), ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Six', style: TextStyle(fontSize: 25, color: Colors.lightBlue), ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Seven', style: TextStyle(fontSize: 25, color: Colors.lightBlue), ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Eight', style: TextStyle(fontSize: 25, color: Colors.lightBlue), ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Nine', style: TextStyle(fontSize: 25, color: Colors.lightBlue), ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Ten', style: TextStyle(fontSize: 25, color: Colors.lightBlue), ),
          ),
        ],
      )*/
    /*SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Column(
              children : [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.cyan[100],
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.white60,
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.amberAccent,
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.black26,
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.white38,
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.lightBlue,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.cyan[50],
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.cyan[200],
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.cyan[300],
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.cyan,
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.cyan[400],
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.cyan[900],
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.cyan[800],
                ),
              ]
          ),
        ),
      )*/
  }
}
/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),

        body: Center(
          child: ElevatedButton(
            child: const Text('click'),
            onPressed: () {
            print('clicked button');
            },
          ),
        ),
    );*/
/*
       Container(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text("Gaddar"),
              const Text("Kumar"),
              const Text("chaudhary"),
              const Text("Ram"),
              const Text("shiv", style: TextStyle(fontSize: 25),),
              ElevatedButton(onPressed: () {
                print('hii');
              }, child: const Text('Button'))
            ],
          ),
        )
       Center(
          child: SizedBox(
            width: 200,
            height: 140,
            child: Image.asset('assets/images/sdda.jpg'),
          ),
          
        )

       Center(
          child: OutlinedButton(
              onPressed: () {
                _showToast(context);
              },
              onLongPress: () => print('Long pressed'),

              child: const Text('Button')),
        )

         Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.yellow[100],
          child: const Center(
              child: Text('hello world', style: TextStyle(fontSize: 25, color: Colors.indigoAccent, fontWeight: FontWeight.bold),)

          ),
        ),
      )

         Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.brown,
          child: const Text("Hello developers"),
        ),
      ),
         backgroundColor: Colors.blueGrey,

        );*/

void _showToast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Added to favorite'),
      action: SnackBarAction(
          label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}
