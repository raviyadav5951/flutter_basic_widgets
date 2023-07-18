import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            ///Element 1
            Image.asset(
              'assets/images/dal_lake.jpg',
            ),
              const SizedBox(
              height: 10,
            ),

            ///Element 2
            const Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Dal Lake ',
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Srinagar, India. ',
                        style: TextStyle(fontSize: 21, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('100'),
                )
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            ///Element 3
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Icon(Icons.call), Text('Call')],
                ),
                Column(
                  children: [Icon(Icons.near_me), Text('Route')],
                ),
                Column(
                  children: [Icon(Icons.share), Text('Share')],
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            ///Element 4
            const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Text(
                'Reckoned to be the pride of Kashmir tourism, Dal Lake is the most popular attraction in Srinagar. Enclosed by splendid Pir Panjal mountains and Mughal Gardens, this must-see place is ideal for family vacationers, honeymoon couples, and even for solo travellers seeking peace.Dal Lake is also one of the best locations in Kashmir for film shooting as it offers some incredible vistas of lofty rolling hills, the distant snow-capped mountains, shikaras cruising quietly and the houseboat standing still with the perfect poise.',
                style: TextStyle(fontStyle: FontStyle.normal, fontSize: 15),
              ),
            ),
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
