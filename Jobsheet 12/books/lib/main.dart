import 'package:books/geolocation.dart';
import 'package:books/navigation_dialog.dart';
import 'package:books/navigation_first.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Demo Arno',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
      // home: LocationScreen(),
      // home: const NavigationFirst(),
      // home: const NavigationDialogScreen(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  int appCounter = 0;
  String result = '';
  late Completer completer;

  @override
  void initState() {
    super.initState();
    readAndWritePreference();
  }

  Future readAndWritePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    appCounter = prefs.getInt('appCounter') ?? 0;
    appCounter++;
    await prefs.setInt('appCounter', appCounter);
    setState(() {
      appCounter = appCounter;
    });
  }

  Future deletePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    setState(() {
      appCounter = 0;
    });
  }

  Future handleError() async {
    try {
      await returnError();
    } catch (error) {
      setState(() {
        result = error.toString();
      });
    } finally {
      print('Complete');
    }
  }

  Future returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('Something terrible happened!');
  }

  // void returnFG() {
  //   FutureGroup<int> futureGroup = FutureGroup<int>();
  //   futureGroup.add(returnOneAsync());
  //   futureGroup.add(returnTwoAsync());
  //   futureGroup.add(returnThreeAsync());
  //   futureGroup.close();
  //   futureGroup.future.then((List<int> value) {
  //     int total = 0;
  //     for (var element in value) {
  //       total += element;
  //     }
  //     setState(() {
  //       result = total.toString();
  //     });
  //   });
  // }

  void returnFG() {
    final futures = Future.wait<int>([
      returnOneAsync(),
      returnTwoAsync(),
      returnThreeAsync(),
    ]);

    futures.then((List<int> value) {
      int total = 0;
      for (var element in value) {
        total += element;
      }
      setState(() {
        result = total.toString();
      });
    });
  }

  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  // Future calculate() async {
  //   await Future.delayed(const Duration(seconds: 5));
  //   completer.complete(42);
  // }

  Future calculate() async {
    try {
      await new Future.delayed(const Duration(seconds: 5));
      completer.complete(42);
      // throw Exception();
    } catch (_) {
      completer.completeError({});
    }
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/qCLFw5injs8C';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future'),
      ),
      // body: Center(
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('You have opened the app $appCounter times.'),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                deletePreference();
              },
              child: Text('Reset counter'),
              // child: const Text('GO!'),
              // onPressed: () {
              //   setState(() {});
              //   getData().then((value) {
              //     result = value.body.toString().substring(0, 450);
              //     setState(() {});
              //   }).catchError((_) {
              //     result = 'An error occured';
              //     setState(() {});
              //   });
              // },
              // onPressed: () {
              //   count();
              // },
              // onPressed: () {
              //   getNumber().then((value) {
              //     setState(() {
              //       result = value.toString();
              //     });
              //   });
              // },
              // onPressed: () {
              //   getNumber().then((value) {
              //     setState(() {
              //       result = value.toString();
              //     });
              //   }).catchError((e) {
              //     result = 'An error occurred';
              //   });
              // },
              // onPressed: () {
              //   returnFG();
              // },
              // onPressed: () {
              // returnError().then((value) {
              //   setState(() {
              //     result = 'Success';
              //   });
              // }).catchError((onError) {
              //   setState(() {
              //     result = onError.toString();
              //   });
              // }).whenComplete(() => print('Complete'));
              // },
              // onPressed: () {
              //   handleError().then((value) {
              //     setState(() {
              //       result = 'Success';
              //     });
              //   }).catchError((onError) {
              //     setState(() {
              //       result = onError.toString();
              //     });
              //   }).whenComplete(() => print('Complete'));
              // },
            ),
            // const Spacer(),
            // Text(result),
            // const Spacer(),
            // const CircularProgressIndicator(),
            // const Spacer(),
          ],
        ),
      )),
    );
  }
}
