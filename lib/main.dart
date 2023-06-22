import 'package:flutter/material.dart';
import 'package:otp_field/widgets/otp_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  late TextEditingController _controllerOne;
  late TextEditingController _controllerTwo;
  late TextEditingController _controllerThree;
  late TextEditingController _controllerFour;
  late TextEditingController _controllerFive;
  late TextEditingController _controllerSix;
  late FocusNode focusNodeOne;
  late FocusNode focusNodeTwo;
  late FocusNode focusNodeThree;
  late FocusNode focusNodeFour;
  late FocusNode focusNodeFive;
  late FocusNode focusNodeSix;

  @override
  void initState() {
    super.initState();
    _controllerOne = TextEditingController();
    _controllerTwo = TextEditingController();
    _controllerThree = TextEditingController();
    _controllerFour = TextEditingController();
    _controllerFive = TextEditingController();
    _controllerSix = TextEditingController();
    focusNodeOne = FocusNode();
    focusNodeTwo = FocusNode();
    focusNodeThree = FocusNode();
    focusNodeFour = FocusNode();
    focusNodeFive = FocusNode();
    focusNodeSix = FocusNode();
  }

  @override
  void dispose() {
    _controllerOne.dispose();
    _controllerTwo.dispose();
    _controllerThree.dispose();
    _controllerFour.dispose();
    _controllerFive.dispose();
    _controllerSix.dispose();
    focusNodeOne.dispose();
    focusNodeTwo.dispose();
    focusNodeThree.dispose();
    focusNodeFour.dispose();
    focusNodeFive.dispose();
    focusNodeSix.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OtpBox(
              size: size,
              controller: _controllerOne,
              nextFocusNode: focusNodeTwo,
              thisFocusNode: focusNodeOne,
            ),
            OtpBox(
              size: size,
              controller: _controllerTwo,
              nextFocusNode: focusNodeThree,
              thisFocusNode: focusNodeTwo,
            ),
            OtpBox(
              size: size,
              controller: _controllerThree,
              nextFocusNode: focusNodeFour,
              thisFocusNode: focusNodeThree,
            ),
            OtpBox(
              size: size,
              controller: _controllerFour,
              nextFocusNode: focusNodeFive,
              thisFocusNode: focusNodeFour,
            ),
            OtpBox(
              size: size,
              controller: _controllerFive,
              nextFocusNode: focusNodeSix,
              thisFocusNode: focusNodeFive,
            ),
            OtpBox(
              size: size,
              controller: _controllerSix,
              nextFocusNode: focusNodeSix,
              thisFocusNode: focusNodeSix,
            ),
          ],
        ),
      ),
    );
  }
}
