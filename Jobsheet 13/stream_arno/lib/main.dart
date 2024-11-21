import 'package:flutter/material.dart';
// import 'stream.dart';
import 'dart:async';
import 'dart:math';
// import 'numberStream.dart';
import 'random_screen.dart';

void main() {
  runApp(const MyApp());
}

class NumberStream {
  Stream<int> getNumbers() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      Random random = Random();
      int myNum = random.nextInt(10);
      return myNum;
    });
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Arno',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      // home: const StreamHomePage(),
      home: const RandomScreen(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  // Color bgColor = Colors.blueGrey;
  // late ColorStream colorStream;
  // int lastNumber = 0;
  // late StreamController numberStreamController;
  // late NumberStream numberStream;
  // late StreamTransformer transformer;
  // late StreamSubscription subscription;
  // late StreamSubscription subscription2;
  // String values = '';
  late Stream<int> numberStream;

  // void changeColor() async {
  //   // await for (var eventColor in colorStream.getColors())
  //   colorStream.getColors().listen((eventColor) {
  //     setState(() {
  //       bgColor = eventColor;
  //     });
  //   });
  // }

  @override
  void initState() {
    // super.initState();
    // colorStream = ColorStream();
    // changeColor();
    // transformer = StreamTransformer<int, int>.fromHandlers(
    //     handleData: (value, sink) {
    //       sink.add(value * 10);
    //     },
    //     handleError: (error, trace, sink) {
    //       sink.add(-1);
    //     },
    //     handleDone: (sink) => sink.close());
    // numberStream = NumberStream();
    numberStream = NumberStream().getNumbers();
    // numberStreamController = numberStream.controller;
    // Stream stream = numberStreamController.stream.asBroadcastStream();
    // stream.listen(event) {
    // stream.transform(transformer).listen((event) {
    // subscription = stream.listen((event) {
    //   setState(() {
    //     // lastNumber = event;
    //     values += '$event - ';
    //   });
    // });
    // subscription2 = stream.listen((event) {
    //   setState(() {
    //     values += '$event - ';
    //   });
    // });

    // yang menyebabkan error jika subscription2 diaktifkan adalah
    // karena Stream hanya dapat didengarkan oleh satu pendengar secara default.

    // .onError((error) {
    //   setState(() {
    //     lastNumber = -1;
    //   });
    // });
    // subscription.onError((error) {
    //   setState(() {
    //     lastNumber = -1;
    //   });
    // });
    // subscription.onDone(() {
    //   print('OnDone was called');
    // });
    super.initState();
  }

  // void stopStream() {
  //   numberStreamController.close();
  // }

  // @override
  // void dispose() {
  //   numberStreamController.close();
  //   subscription.cancel();
  //   super.dispose();
  // }

  // void addRandomNumber() {
  //   Random random = Random();
  //   int myNum = random.nextInt(10);
  //   if (!numberStreamController.isClosed) {
  //     numberStream.addNumberToSink(myNum);
  //   } else {
  //     setState(() {
  //       lastNumber = -1;
  //     });
  //   }
  //   // numberStream.addError();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Arno'),
      ),
      // body: Container(
      //   decoration: BoxDecoration(color: bgColor),
      // )
      // body: SizedBox(
      //   width: double.infinity,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Text(values),
      //       Text(lastNumber.toString()),
      //       ElevatedButton(
      //         onPressed: () => addRandomNumber(),
      //         child: Text('New Random Number'),
      //       ),
      //       ElevatedButton(
      //         onPressed: () => stopStream(),
      //         // child: const Text('Stop Subscription'),
      //         child: const Text('Stop Stream'),
      //       )
      //     ],
      //   ),
      // ),
      body: StreamBuilder(
          stream: numberStream,
          initialData: 0,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('Error!');
            }
            if (snapshot.hasData) {
              return Center(
                  child: Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 96),
              ));
            } else {
              return const SizedBox.shrink();
            }
          }),
    );
  }
}
