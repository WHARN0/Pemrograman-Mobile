import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/fab_widget.dart';
import 'package:hello_world/basic_widgets/loading_cupertino.dart';
import 'basic_widgets/text_widget.dart';
import 'basic_widgets/image_widget.dart';
import 'basic_widgets/input_dan_selection.dart';
import 'basic_widgets/dialog_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Project',
      home: MyHomePage(title: 'Jobsheet 6'),
    );
  }
}

class InputSelection extends StatelessWidget {
  const InputSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'NIM',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                MyLayout(),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        MyImageWidget(),
                        SizedBox(
                          height: 20.0,
                        ),
                        MyTextWidget(),
                        Text("${selectedDate.toLocal()}".split(' ')[0]),
                        const SizedBox(
                          height: 20.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _selectDate(context);
                            print(selectedDate.day +
                                selectedDate.month +
                                selectedDate.year);
                          },
                          child: const Text('Pilih Tanggal'),
                        ),
                        const SizedBox(height: 20.0),
                        const InputSelection(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FabWidget(),
    );
  }
}
