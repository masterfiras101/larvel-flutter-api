import 'package:flutter/material.dart';
import 'screens/users_screen.dart';


void main() => runApp(const FlutterLaravelApi());

class FlutterLaravelApi extends StatelessWidget {
  const FlutterLaravelApi({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter & Laravel api',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const UsersScreen(),
    );
  }
}
