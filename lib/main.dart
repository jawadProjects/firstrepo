import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviveType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      );
    });
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
    final deviceInfo = MediaQuery.of(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('My responsive app'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: deviceInfo.orientation == Orientation.portrait
                ? SizedBox(
                    width: 20.w,
                    height: 30.h,
                    child: Center(
                      child: Container(
                        color: Colors.red,
                        child: Text('Welcome to mobile screen'),
                      ),
                    ))
                : SizedBox(
                    width: 20.w,
                    height: 30.h,
                    child: Center(
                      child: Container(
                          color: Colors.green,
                          child: Text('Welcome to tablet screen')),
                    ))));
  }
}
