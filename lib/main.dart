import 'package:flutter/material.dart';
import 'package:test/routes/routes.dart';
import 'package:test/constants/theme.dart';
import 'package:test/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}
// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// bool _iconBool = false;

// IconData _iconLight = Icons.wb_sunny;
// IconData _iconDark = Icons.nights_stay;

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zoom APK',
      debugShowCheckedModeBanner: false,
      theme: CTheme.lightTeme,
      initialRoute: HomePage.routeNames,
      routes: routes,
      
    );
  }
}
