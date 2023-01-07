
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
        color: Colors.blue,
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.pink,
              height: 750.0,
              width: 320.0,
            ),
            Container(
              color: Colors.yellow,
              height: 600.0,
              width: 220.0,
            ),
            Container(
              color: Colors.black,
              height: 500.0,
              width: 120.0,
              //child: Text('Hello'),
            ),
            Container(
              color: Colors.white,
              height: 420.0,
              width: 60.0,
            ),
          ],
        ),
      ),
    );
  }
}
