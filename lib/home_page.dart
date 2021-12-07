import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String username;
  final String email;
  HomePage({required this.username,required this.email});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Home page'),),
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/image (1).png',width: 200,),
            Column(
              children: [
                const Text('Hello',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Text(widget.username,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                const SizedBox(height: 50,),
                const Text('email:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                Text(widget.email,style: TextStyle(fontSize: 16,)),
              ],
            ),

            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color:const Color(0xffFFAA00),
                ),
                child: const Center(child: Text('Log out',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
