import 'package:design/design.dart';
import 'package:flutter/material.dart';

class FeaturePokedex extends StatelessWidget {
  const FeaturePokedex({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Tokens(
      tokens: DefaultTokens(),
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: LightTheme.themeData(context),
            darkTheme: DarkTheme.themeData(context),
            themeMode: ThemeMode.light,
            home: const MyHomePage(title: 'FeaturePokedex'),
          );
        },
      ),
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
        backgroundColor: context.tokens.color.colorsGreen98,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text('$_counter', style: context.tokens.textStyle.title1Title1B),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
