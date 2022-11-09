import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo text'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(3),
          child: const Text('Hello world'),
        ),
      ),
    );
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
  }
}

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
