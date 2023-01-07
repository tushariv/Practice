void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //it is the root widget of your app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Single Layout widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //this is the theme of your app
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Overflow Box Widget'),
      ),
      body: Center(
        child: Container(
          height: 50.0,
          width: 50.0,
          color: Colors.red,
          child: OverflowBox(
            minHeight: 70.0,
            minWidth: 70.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

