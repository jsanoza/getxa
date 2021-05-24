import 'package:flutter/material.dart';
import 'package:fullgetxlifecycle/controller/controller.dart';
import 'package:fullgetxlifecycle/views/onboard.dart';
import 'package:get/get.dart';

import 'bindings/bindings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindMe(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Boarding(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Increment count = Get.find<Increment>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Hey"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Obx(() {
              return Text(
                '${count.count.value}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  count.addCount();
                },
                tooltip: 'Increment',
                child: Icon(Icons.upload),
              ),
              SizedBox(
                width: 4,
              ),
              FloatingActionButton(
                onPressed: () {
                  count.minusCount();
                },
                tooltip: 'Increment',
                child: Icon(Icons.arrow_downward_sharp),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
