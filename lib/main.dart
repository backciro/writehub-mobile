import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WriteHub',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.deepOrange,
        backgroundColor: Colors.black54,
      ),
      home: MyHomePage(title: 'WriteHUB'),
      themeMode: ThemeMode.dark,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              widget.title,
              style: TextStyle(fontWeight: FontWeight.w700),
              textAlign: TextAlign.right,
            ),
          ),
        ),
        body: Container(color: Colors.black87, child: null),
        floatingActionButton: ActionButton());
  }
}

class ActionButton extends StatelessWidget {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    if (!pressed) pressed = true;
    return pressed
        ? FloatingActionButton(
            child: new Icon(Icons.album),
            onPressed: () {
              showModalBottomSheet<void>(
                  context: context,
                  elevation: 96,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    final v1 = new ListTile(
                      title: Text('New Track'),
                      subtitle: Text('cazzu diaulu'),
                    );
                    final v2 = new ListTile(
                      title: Text('Import Audio'),
                      subtitle: Text('cazzu diaulu'),
                    );
                    final v3 = new ListTile(
                      title: Text('Add Note'),
                      subtitle: Text('cazzu diaulu'),
                    );
                    return Container(
                      height: MediaQuery.of(context).size.height / 2.75,
                      child: new Column(
                        children: <Widget>[v1, v2, v3],
                      ),
                    );
                  });
            },
          )
        : null;
  }
}
