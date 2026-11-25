import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        title: const Text('nabedluvrr', //ชื่อแอค
        style: TextStyle(color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w800,
        ),
      ),
      actions: [
        Icon(
          Icons.menu,
          size: 30,
          color: Colors.black,
        ),
      ],
        //รูปโปรไฟล์
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              ClipOval(
                child: Image.asset(
                    "assets/n.jpg"
                  ,width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              //แถบแนวนอนสถิติ
              SizedBox(width: 40,),
              Column(
                children: [
                  Text("2",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  Text("posts")
                ],
              ),
              SizedBox(width: 40,),
              Column(
                children: [
                  Text("1,005",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  Text("followers")
                ],
              ),
              SizedBox(width: 40,),
              Column(
                children: [
                  Text("663",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  Text("following")
                ],
              ),

            ],
          ),
          //แคปชั่น
          Column(children: [
            SizedBox(width: 0,height: 4,),
            Text("ณัฐิดา จิตนิยม",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),SizedBox(width: 0,height: 4,),
          ]
          ),
          Column(children: [
            SizedBox(width: 0,height: 1,),
            Text("noroor",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),SizedBox(width: 0,height: 4),
          ]
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
                height: 50,
              ),
              //ปุ่มติดตามและข้อความ
              Expanded(
                  child: ElevatedButton(
                      onPressed: () => {},
                      child: Text("Follow"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8)
                    ),
                  ),
                  ),
              ),
              SizedBox(
                width: 10,
                height: 50,
              ),
              Expanded(child: OutlinedButton(
                  onPressed: () => {} ,
                  child: Text("Message"),
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8)
                  ),
                ),
              ),
              ),
              SizedBox(
                width: 10,
                height: 70,
              ),
            ],
          ),
          //ไอคอน
          Row(
            children: [
              SizedBox(width: 90,height: 30,),
              Icon(Icons.grid_on,size: 35,),
              SizedBox(width: 160,height: 20,),
              Icon(Icons.person_pin,size: 35,),
            ],
          ),
          //รูปภาพด้านล่าง 3 รูป
          GridView.count(crossAxisCount: 3,
          shrinkWrap: true,
          children: [Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi4kQUST1x3dSG3k3yvUrOlexLx1rE-o8S2AH8-N5d0w&s=10"),
                     Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdIKtp8ec6L42KPvV5pCad8v3M3m0oP8aB2g7aUz9nXw&s=10"),
                     Image.network("https://media.atime.live/editor/content/2a948bcd-15f2-40ba-876f-421019ce57b8.jpeg")
                     ],
          ),
        ],


      ),
    );
  }
}