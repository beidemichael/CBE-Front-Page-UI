import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F0F6),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1F0F6),
        foregroundColor: Colors.purple,
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
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8),
                child: Container(
                  width: 400,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 231, 156, 244),
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
                          top: 80, left: 0, right: 0, child: BalanceText()),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 13),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContainer(
                        FontAwesomeIcons.screwdriverWrench, 'Utilities'),
                    CustomContainer(FontAwesomeIcons.solidFolderOpen, 'Other'),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomContainer(FontAwesomeIcons.folderOpen, 'Events'),
                  ],
                ),
              ),
            ],
          ),
          Positioned(bottom: 20, left: 0, right: 0, child: BottomBar()),
        ],
      ),
    );
  }

  Widget BottomBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        width: 500,
        height: 70,
       decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 231, 156, 244),
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
      ),
    );
  }

  Widget TitleText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Commercial Bank of Ethiopia',
          style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: Color.fromARGB(221, 255, 255, 255),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700)),

          // const TextStyle(fontSize: 18, color: Color(0xFF60627C),fontWeight: FontWeight.w600),
        ),
        Text(
          'The Bank You can always Rely on!',
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  color: Color.fromARGB(221, 255, 223, 255),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500)),

          // const TextStyle(fontSize: 18, color: Color(0xFF60627C),fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget BalanceText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Balance',
          style: GoogleFonts.baiJamjuree(
              textStyle: TextStyle(
                  color: Color.fromARGB(221, 14, 14, 4),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400)),

          // const TextStyle(fontSize: 18, color: Color(0xFF60627C),fontWeight: FontWeight.w600),
        ),
        Text(
          '1,000 Br.',
          style: GoogleFonts.baiJamjuree(
              textStyle: TextStyle(
                  color: Color.fromARGB(221, 255, 255, 255),
                  fontSize: 32.0,
                  fontWeight: FontWeight.w500)),

          // const TextStyle(fontSize: 18, color: Color(0xFF60627C),fontWeight: FontWeight.w600),
        ),
        Text(
          'Saving - 1000123456789',
          style: GoogleFonts.baiJamjuree(
              textStyle: TextStyle(
                  color: Color.fromARGB(221, 70, 28, 70),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500)),

          // const TextStyle(fontSize: 18, color: Color(0xFF60627C),fontWeight: FontWeight.w600),
        ),
        Text(
          'Aug 12 - 2023',
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  color: Color.fromARGB(221, 176, 101, 176),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500)),

          // const TextStyle(fontSize: 18, color: Color(0xFF60627C),fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget CustomContainer(icon, text) {
    return Container(
      width: 170,
      height: 100,
      decoration: const BoxDecoration(
        color: Color(0xFFF0F0F8),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFCFCDDF),
            offset: Offset(7, 7),
            blurRadius: 14,
            spreadRadius: 6,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-5, -5),
            blurRadius: 9,
            spreadRadius: 4,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.purple.withOpacity(0.6),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    color: Color.fromARGB(221, 128, 92, 128),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700)),

            // const TextStyle(fontSize: 18, color: Color(0xFF60627C),fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
