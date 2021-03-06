import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Null Safety';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late String girlFriend;

  @override
  void initState() {
    super.initState();

    girlFriend = 'Sarah Abs';
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.indigoAccent.withOpacity(0.4),
        appBar: AppBar(
          title: Text(MyApp.title),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(size: 150),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 36,
                      height: 1.3,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Null Safety\n',
                        style: TextStyle(
                          color: Colors.lightBlue.shade300,
                          fontWeight: FontWeight.w400,
                          height: 3,
                        ),
                      ),
                      TextSpan(
                        text: 'In 5 Minutes',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
