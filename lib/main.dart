

import 'app.dart';

void main() async{
 runApp(App());
}

//
// import 'package:flutter/material.dart';
// import 'package:web_socket_channel/web_socket_channel.dart';
// void main() {
//  runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//  const MyApp({super.key});
//
//  @override
//  Widget build(BuildContext context) {
//   return MaterialApp(
//    debugShowCheckedModeBanner: false,
//    home: ArduinoWebSocketScreen(),
//   );
//  }
// }
//
// class ArduinoWebSocketScreen extends StatefulWidget {
//  const ArduinoWebSocketScreen({Key? key}) : super(key: key);
//
//  @override
//  State<ArduinoWebSocketScreen> createState() => _ArduinoWebSocketScreenState();
// }
//
// class _ArduinoWebSocketScreenState extends State<ArduinoWebSocketScreen> {
//  final _channel = WebSocketChannel.connect(
//   Uri.parse('ws://localhost:8080'),
//  );
//
//  List<String> messages = [];
//
//  @override
//  void initState() {
//   super.initState();
//   _channel.stream.listen((message) {
//    setState(() {
//     messages.add(message);
//    });
//   });
//  }
//
//  @override
//  void dispose() {
//   _channel.sink.close();
//   super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//   return Scaffold(
//    appBar: AppBar(title: const Text("Arduino Data")),
//    body: ListView.builder(
//     padding: const EdgeInsets.all(16),
//     itemCount: messages.length,
//     itemBuilder: (context, index) => Text(messages[index]),
//    ),
//   );
//  }
// }