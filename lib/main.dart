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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Letter Sort Sample'),
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
  final titles = <String>[
    '030個の柿',
    'Apple',
    '林檎',
    'もも',
    '100個の梨',
    'Peach',
    'モモ',
    'りんご',
    '桃',
    'peach',
    'リンゴ',
    'apple',
  ];
  void _onPressedSortButton() {
    setState(() {
      titles.sort((a, b) => a.compareTo(b));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    titles[index],
                    style: const TextStyle(fontSize: 26.0),
                  ),
                ),
                Text(
                  'codeUnits: ${titles[index].codeUnits.toString()}',
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                )
              ],
            );
          }),

      floatingActionButton: FloatingActionButton(
        onPressed: _onPressedSortButton,
        child: const Icon(Icons.sort),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
