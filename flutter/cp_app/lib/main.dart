import 'package:cp_app/system_tray.dart';
import 'package:flutter/material.dart';

import 'animals.dart';

void main() {
  runApp(MyApp());
  List<PlatformMenuItem> menus = <PlatformMenuItem>[
    PlatformMenu(label: 'File', menus: [
      PlatformMenuItem(
        label: 'Hello World',
        // ignore: avoid_print
        onSelected: () => print('quit'),
      )
    ])
  ];
  WidgetsBinding.instance.platformMenuDelegate.setMenus(menus);
  initSystemTray();
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> animals = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: Scaffold(
          body: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.blueGrey,
                  child: ListView(
                    padding: const EdgeInsets.all(5.0),
                    children: const [
                      Animal(name: "Dog"),
                      Animal(name: "Cat"),
                      Animal(name: "Bear"),
                      Animal(name: "Fish"),
                      Animal(name: "Lizard"),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Column(
                  children: [
                    Flexible(
                      child: Container(
                          color: Colors.blue,
                          child: DragTarget(
                            onAccept: (data) {
                              animals.add(data.toString());
                            },
                            builder: (context, candidateData, rejectedData) {
                              return ListView(
                                children: animals.map((name) {
                                  return Animal(name: name);
                                }).toList(),
                              );
                            },
                          )),
                    ),
                    Flexible(child: Container(color: Colors.lightBlue))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
