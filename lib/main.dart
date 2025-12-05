import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => ThemeProvider(), child: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    bool isDark = context.watch<ThemeProvider>().isDark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          isDark
              ? ThemeData.dark().copyWith(
                textTheme: GoogleFonts.agbalumoTextTheme(
                  ThemeData.dark().textTheme,
                ),
              )
              : ThemeData.light().copyWith(
                textTheme: GoogleFonts.akayaTelivigalaTextTheme(
                  ThemeData.light().textTheme,
                ),
              ),

      home: Scaffold(
        appBar: AppBar(
          title: Text("< Ayman />"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    context.read<ThemeProvider>().toggleTheme();
                    ;
                  });
                },
                icon:
                    isDark
                        ? Icon(FontAwesomeIcons.sun)
                        : Icon(FontAwesomeIcons.moon),
              ),
            ),
          ],
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            bool isWide = constraints.maxWidth > 800;

            return SingleChildScrollView(
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          isDark
                              ? AssetImage("lib/image/skynight.png")
                              : AssetImage("lib/image/sky.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child:
                      isWide
                          ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // النص
                                    Container(
                                      width: 400,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Hi, I am Ayman",
                                            style: TextStyle(
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "  I'm a Flutter Full-Stack Developer, focused on building modern apps and sharpening my skills.",
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ],
                                      ),
                                    ),

                                    // الصورة
                                    Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 3,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Image.asset(
                                        "lib/image/ayman.png",
                                        width: 350,
                                        height: 400,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Image.asset(
                                        "lib/image/whats.png",
                                        width: 50,
                                      ),
                                      onPressed: () {
                                        launchUrl(
                                          Uri.parse(
                                            "https://wa.me/201030731218",
                                          ),
                                        );
                                      },
                                    ),
                                    SizedBox(width: 20),
                                    IconButton(
                                      icon: Image.asset(
                                        "lib/image/face.png",
                                        width: 50,
                                      ),
                                      onPressed: () {
                                        launchUrl(
                                          Uri.parse(
                                            "https://facebook.com/aymn.altyjany.2025",
                                          ),
                                        );
                                      },
                                    ),
                                    SizedBox(width: 20),
                                    IconButton(
                                      icon: Image.network(
                                        "lib/image/github.png",
                                        width: 50,
                                      ),
                                      onPressed: () {
                                        launchUrl(
                                          Uri.parse(
                                            "https://github.com/AymanTegany",
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                          : Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              // الصورة
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.blueAccent,
                                      width: 4,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    "lib/image/ayman.png",
                                    width: 300,
                                    height: 250,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              SizedBox(height: 20),

                              // النص
                              Container(
                                width: 300,
                                child: Column(
                                  children: [
                                    Text(
                                      "Hi, I am Ayman",
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "I'm a Flutter Full-Stack Developer, focused on building modern apps and sharpening my skills.",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: Image.asset(
                                      "lib/image/whats.png",
                                      width: 50,
                                    ),
                                    onPressed: () {
                                      launchUrl(
                                        Uri.parse("https://wa.me/201030731218"),
                                      );
                                    },
                                  ),
                                  SizedBox(width: 20),
                                  IconButton(
                                    icon: Image.asset(
                                      "lib/image/face.png",
                                      width: 50,
                                    ),
                                    onPressed: () {
                                      launchUrl(
                                        Uri.parse(
                                          "https://facebook.com/aymn.altyjany.2025",
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(width: 20),
                                  IconButton(
                                    icon: Image.network(
                                      "lib/image/github.png",
                                      width: 50,
                                    ),
                                    onPressed: () {
                                      launchUrl(
                                        Uri.parse(
                                          "https://github.com/AymanTegany",
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ThemeProvider extends ChangeNotifier {
  bool isDark = false;

  void toggleTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
