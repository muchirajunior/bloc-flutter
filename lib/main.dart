import 'package:blocflutter/bloc/bloc.dart';
import 'package:blocflutter/screens/create.dart';
import 'package:blocflutter/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=>TodoBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
         
          primarySwatch: Colors.indigo,
        ),
        routes: {
          "/":(context)=>const Home(),
          "/create":(context)=> const Create()
        },
       
      ),
    );
  }
}
