
import 'package:codemehubtest/service/api_service.dart';
import 'package:codemehubtest/ui/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
providers: [
RepositoryProvider(create: (context)=>APIService())
],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Test',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
          builder: EasyLoading.init(),
        home: LoginScreen()
      ),
    );
  }
}
