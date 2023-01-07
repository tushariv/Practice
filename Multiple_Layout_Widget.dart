void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple Layout Widget',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Row(
          children: const [
            Expanded(
              child: Text('Tush', textAlign: TextAlign.center),
            ),
            Expanded(
              child: Text('Riya', textAlign: TextAlign.center),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: FlutterLogo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
