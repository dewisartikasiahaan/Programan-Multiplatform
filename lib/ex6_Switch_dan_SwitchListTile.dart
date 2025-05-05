import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: const Home(title: 'Flutter Demo Home Page'),
        );
    }
}

class Home extends StatefulWidget {
    const Home({Key? key, required this.title}) : super(key: key);

    final String title;

    @override
    State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    final List<String> settings = ["Data Seluler", 'Mode Pesawat', 'WiFi'];
    List<bool> settingValues = [false, false, false];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text("Percobaan Menggunakan Widget")),
            body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                    children: <Widget>[
                      Row(children:<Widget> [
                        Switch(
                          value:settingValues[0],
                          onChanged:(bool value){
                            setState((){
                              settingValues[0]=value;

                            });
                            print(settingValues);
                          },
                        ),
                        Container(width: 10.0),
                        Text(settings[0]),

                      ],
                      ),
                        
                        
                        const Divider(),
                        Row(
                          children:<Widget> [
                            Switch(
                              value:settingValues[1],
                              onChanged: (bool value){
                                setState((){
                                  settingValues[1]=value;
                                });
                                print(settingValues);
                              },
                            ),

                            Container(width: 10.0),
                            Text(settings[1]),
                          ],
                        ),
                        const Divider(),
                        Row(children:<Widget>[
                          Switch(
                            value:settingValues[2],
                            onChanged:(bool value){
                              setState((){
                                settingValues[2]=value;
                              });
                              print(settingValues);
                            },
                          ),
                          Container(width: 10.0),
                          Text(settings[2]),
                        ],
                        ),
                    ]),
            ),
        );
    }
}
