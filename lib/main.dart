import 'package:flutter/material.dart';
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
  int pageIndex = 0;
  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
  ];
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
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

//end of widget

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.black87,
      //decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(
                enableFeedback: true,
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? const Icon(
                        Icons.account_balance_rounded,
                        color: Colors.green,
                        size: 35,
                      )
                    : const Icon(
                        Icons.account_balance_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
              ),
              const Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: true,
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                        Icons.diamond_rounded,
                        color: Colors.green,
                        size: 35,
                      )
                    : const Icon(
                        Icons.diamond_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
              ),
              const Text(
                "MyAccess",
                style: TextStyle(color: Colors.white),
                // textAlign: ,
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: true,
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                    ? const Icon(
                        Icons.qr_code_rounded,
                        color: Colors.green,
                        size: 35,
                      )
                    : const Icon(
                        Icons.qr_code_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
              ),
              const Text(
                "Scan",
                style: TextStyle(color: Colors.white),
                // textAlign: ,
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: true,
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: pageIndex == 3
                    ? const Icon(
                        Icons.support_agent_rounded,
                        color: Colors.green,
                        size: 35,
                      )
                    : const Icon(
                        Icons.support_agent_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
              ),
              const Text(
                "Support",
                style: TextStyle(color: Colors.white),
                // textAlign: ,
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    pageIndex = 4;
                  });
                },
                icon: pageIndex == 4
                    ? const Icon(
                        Icons.person_rounded,
                        color: Colors.green,
                        size: 35,
                      )
                    : const Icon(
                        Icons.person_outline_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
              ),
              const Text(
                "Profile",
                style: TextStyle(color: Colors.white),
                // textAlign: ,
              ),
            ],
          ),
        ],
      ),
    );
  }
  //end of bottomNavigation
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
