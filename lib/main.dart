import 'package:calendart_example/main.dart' as calendart;
import 'package:combos_example/main.dart' as combos;
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

const _combosPath = '/combos';
const _calendartPath = '/calendart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Creomobile Samples',
        theme: ThemeData(
          buttonTheme: ButtonThemeData(
              buttonColor: Colors.blueAccent, //  <-- dark color
              textTheme: ButtonTextTheme.primary),
        ),
        routes: {
          Navigator.defaultRouteName: (context) => MyHomePage(),
          _combosPath: (context) => combos.HomePage(),
          _calendartPath: (context) => calendart.HomePage(),
        },
      );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Creomobile Samples')),
        body: Center(
          child: IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                RaisedButton(
                  child: Text('Combos Sample'),
                  onPressed: () => Navigator.of(context).pushNamed(_combosPath),
                ),
                RaisedButton(
                  child: Text('Calendar Sample'),
                  onPressed: () =>
                      Navigator.of(context).pushNamed(_calendartPath),
                ),
              ],
            ),
          ),
        ));
  }
}
