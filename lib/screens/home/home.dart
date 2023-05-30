import 'package:flutter/material.dart';
import 'package:test/screens/home/component/body.dart';
import 'package:test/screens/component/custom_bottom_bar.dart';
import 'package:test/screens/home/component/menage/menage.dart';
import 'package:test/screens/home/component/nounou/nounou.dart';
import 'package:test/screens/home/component/appbar_home_custom.dart';
import 'package:test/screens/home/component/pressing/pressing.dart';

class HomePage extends StatefulWidget {
  static String routeNames = "/home";

  const HomePage({super.key});
  // const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int categories = 4;
  List<Widget> categoriescontent = const [
    BodyHomePage(),
    MenagePage(),
    PressingPage(),
    NounouPage(),
  ];
  // User? user = FirebaseAuth.instance.currentUser;
  // UserModel loggedInUser = UserModel();

  // @override
  // void initState() {
  //   super.initState();
  //   FirebaseFirestore.instance
  //       .collection("users")
  //       .doc(user!.uid)
  //       .get()
  //       .then((value) {
  //     this.loggedInUser = UserModel.fromMap(value.data());
  //     setState(() {});
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories,
      child: Scaffold(
        appBar: HomeAppBarCustom(context, title1: "C'"),
        bottomNavigationBar: const CustomBottomBar(
          selectedMenu: MenuState.home,
        ),
        body: TabBarView(
          children: categoriescontent,
        ),
      ),
    );
  }
}
