import 'package:cbe_ui_design/balanceText.dart';
import 'package:cbe_ui_design/bottomBar.dart';
import 'package:cbe_ui_design/qrcodeScanner.dart';
import 'package:cbe_ui_design/titleText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'customContainer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1F0F6),
        foregroundColor: Colors.purple,
        elevation: 0,
        actions: const [
          SizedBox(
            width: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'አማ',
                  style: TextStyle(fontSize: 18),
                ),
                Icon(Icons.refresh),
              ],
            ),
          ),
        ],
      ),
      drawer: Container(),
      body: Stack(
        children: [
          Positioned(bottom: 14, left: 0, right: 0, child: BottomBar()),
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 200,
              decoration: const BoxDecoration(
                color: const Color(0xFFF1F0F6),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 177, 122, 177),
                    offset: Offset(4, 4),
                    blurRadius: 3,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 8),
                        child: Container(
                          width: 400,
                          height: 200,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 225, 147, 239),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 245, 195, 245),
                                offset: Offset(7, 13),
                                blurRadius: 8,
                                spreadRadius: 3,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 20,
                                left: 10,
                                child: Image.asset(
                                  width: 60,
                                  height: 60,
                                  'assets/Logo.png',
                                ),
                              ),
                              Positioned(top: 20, left: 75, child: TitleText()),
                              Positioned(
                                  top: 80,
                                  left: 0,
                                  right: 0,
                                  child: BalanceText()),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomContainer(
                                FontAwesomeIcons.moneyBillTransfer, 'Transfer'),
                            CustomContainer(FontAwesomeIcons.mobile, 'Top Up'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomContainer(FontAwesomeIcons.screwdriverWrench,
                                'Utilities'),
                            CustomContainer(
                                FontAwesomeIcons.solidFolderOpen, 'Other'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomContainer(
                                FontAwesomeIcons.folderOpen, 'Events'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 30,
                    right: 30,
                    child: QRCodeScanner(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
