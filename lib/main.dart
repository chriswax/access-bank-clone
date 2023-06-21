import 'package:flutter/material.dart';
import 'helpers/flutterfont.dart';
import 'screens/airtime_top_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Access Bank',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // splashColor: Colors.transparent,
        //highlightColor: Colors.transparent,
        //hoverColor: Colors.transparent,

        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTab = 0;
  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      // appBar: AppBar(
      //   leading: const Icon(
      //     Icons.menu,
      //     //color: Theme.of(context).primaryColor,
      //   ),
      //   title: const Text(
      //     'Access Bank App',
      //     style: TextStyle(
      //       // color: Theme.of(context).primaryColor,
      //       fontSize: 25,
      //       fontWeight: FontWeight.w600,
      //     ),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      // ),
      body: pages[_selectedTab],

      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.black,
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (index) => _changeTab(index),
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          iconSize: 35,
          selectedFontSize: 16,
          unselectedFontSize: 14,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_rounded),
                activeIcon: Icon(Icons.account_balance_outlined),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FlutterFontIcons.flutterLogoAccess),
                activeIcon: Icon(FlutterFontIcons.flutterLogoAccess),
                label: "MyAccess"),
            BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_rounded),
                activeIcon: Icon(Icons.qr_code_2_outlined),
                label: "Scan"),
            BottomNavigationBarItem(
                icon: Icon(Icons.support_agent_rounded),
                activeIcon: Icon(Icons.support_agent_outlined),
                label: "Support"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                activeIcon: Icon(Icons.person_outline_outlined),
                label: "Profile"),
          ],
        ),
      ),
    );
  }

//end of widget
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
          child: Text(
        'Page No 2',
        style: TextStyle(
          color: Colors.green[900],
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      )),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
          child: Text(
        'Page No 3',
        style: TextStyle(
          color: Colors.green[900],
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      )),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
          child: Text(
        'Page No 4',
        style: TextStyle(
          color: Colors.green[900],
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      )),
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
          child: Text(
        'Page No 5',
        style: TextStyle(
          color: Colors.green[900],
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      )),
    );
  }
}
