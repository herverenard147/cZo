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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zoom APK',
      debugShowCheckedModeBanner: false,
      theme: theme(context),
      themeMode: ThemeMode.system,
      initialRoute: HomePage.routeNames,
      routes: routes,
      
    );
  }
}
