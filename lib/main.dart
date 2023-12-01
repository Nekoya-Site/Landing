import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nekoya',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xff8B0000), brightness: Brightness.light),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            primary: const Color(0xff212226),
            seedColor: const Color(0xff8B0000),
            brightness: Brightness.dark),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: const LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: MediaQuery.of(context).size.width > 800
                ? Row(children: [
                    Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          const Text('Nekoya', style: TextStyle(fontSize: 80)),
                          const Text('Easily Buy Sneakers anywhere, anytime.',
                              style: TextStyle(fontSize: 30)),
                          const SizedBox(
                            height: 40,
                          ),
                          ElevatedButton.icon(
                              onPressed: () {
                                launchUrl(Uri.parse(
                                    'https://github.com/Nekoya-Site/App/releases'));
                              },
                              icon: const Icon(
                                Icons.android,
                                color: Colors.white,
                              ),
                              label: const Text(
                                'Download',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              style: const ButtonStyle(
                                  padding: MaterialStatePropertyAll(
                                      EdgeInsets.only(
                                          top: 20,
                                          bottom: 20,
                                          left: 30,
                                          right: 30)),
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color(0xff8B0000))))
                        ])),
                    Container(
                        width: 300,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/featured.webp'))))
                  ])
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        const Text(
                          'Nekoya',
                          style: TextStyle(fontSize: 50),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'Easily Buy Sneakers anywhere, anytime.',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton.icon(
                            onPressed: () {
                              launchUrl(Uri.parse(
                                  'https://github.com/Nekoya-Site/App/releases'));
                            },
                            icon: const Icon(
                              Icons.android,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'Download',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            style: const ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.only(
                                        top: 20,
                                        bottom: 20,
                                        left: 30,
                                        right: 30)),
                                backgroundColor: MaterialStatePropertyAll(
                                    Color(0xff8B0000))))
                      ])),
        Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
            ),
            padding: const EdgeInsets.only(
                left: 50, right: 50, top: 100, bottom: 100),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    margin: const EdgeInsets.all(25),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/onboarding.webp'))),
                  ),
                  const Text(
                      'Discover and extensive collection of sneakers from all the top brands, conveniently gathered in one place',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      textAlign: TextAlign.center)
                ])),
        Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            padding: const EdgeInsets.only(
                left: 50, right: 50, top: 100, bottom: 100),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    margin: const EdgeInsets.all(25),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/onboarding_2.webp'))),
                  ),
                  const Text(
                    'Choose sizes based on your preferences',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  )
                ])),
        Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
            ),
            padding: const EdgeInsets.only(
                left: 50, right: 50, top: 100, bottom: 100),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    margin: const EdgeInsets.all(25),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/onboarding_3.webp'))),
                  ),
                  const Text(
                      'Experience seamless and hassle-free purchasing with our one-click checkout',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      textAlign: TextAlign.center)
                ])),
        Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 40),
            child: RichText(
              text: TextSpan(
                  text: 'Copyright 2023 ',
                  style: const TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                        text: 'Nekoya Team',
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.secondary),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchUrl(
                                Uri.parse('https://github.com/Nekoya-Site'));
                          }),
                    const TextSpan(
                      text: ', All rights Reserved.',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )
                  ]),
              textAlign: TextAlign.center,
            ))
      ]),
    );
  }
}
