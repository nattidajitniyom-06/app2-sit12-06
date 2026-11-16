import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('หน้าแรก',
        style: TextStyle(color: Colors.pink,
        backgroundColor:  Colors.amber,
        fontSize: 32,
        fontWeight: FontWeight.w800,
        ),
      ),
      leading: Text("leading"),
      actions: [
        Icon(
          Icons.menu,
          size: 60,
          color: Colors.blue,
        ),
        Icon(Icons.person)
      ],
      ),
      body: Column(
        children: [
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Row(
            children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUl2jK1dz3j7miPbekORh24OMuuCvpW996hUvg_mnnHZ0jN9qKc4pJjsO7&s=10"
                ,width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              ClipOval(
                child: Image.asset(
                    "assets/cat.jpeg"
                  ,width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              )
            ],
          )
        ],


      ),
    );
  }
}