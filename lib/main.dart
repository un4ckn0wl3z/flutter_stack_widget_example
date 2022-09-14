import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightGreen,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          SizedBox(
            child: Container(
                constraints: const BoxConstraints.expand(),
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/BG2.png"),
                      fit: BoxFit.contain,
                      alignment: Alignment.topCenter),
                )),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            key: _scaffoldKey,
            appBar: AppBar(
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_basket,
                      color: Colors.black,
                    ))
              ],
              leading: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),
              ),
              backgroundColor: Colors.transparent,
              bottomOpacity: 0.0,
              elevation: 0.0,
            ),
            drawer: const Drawer(
              backgroundColor: Colors.white,
              child: Text('xxxxx'),
            ),
          ),
        ],
      ),
    );
  }
}
