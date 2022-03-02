import 'package:blocflutter/screens/create.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("bloc todo app"),
        actions: [
          IconButton(
            onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Create() )) ,
           icon: const Icon(Icons.create)
           )
        ],
      ),
    );
  }
}