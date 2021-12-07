import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_workshop/home_page.dart';
import 'package:google_fonts/google_fonts.dart';


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController userNameController=  TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    userNameController.clear();
    emailController.clear();
    passwordController.clear();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/image (1).png',width: 200,),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: const Color(0xFF706F6F)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children:[
                        const Icon(Icons.person,size: 25,),
                        const SizedBox(width: 20,),
                        Expanded(
                           child: TextField(
                             controller: userNameController,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Username'
                            ),
                        ),
                         ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: const Color(0xFF706F6F)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const Icon(Icons.email,size: 25,),
                        const SizedBox(width: 20,),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter email'
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  //width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: const Color(0xFF706F6F)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const Icon(Icons.lock,size: 25,),
                        const SizedBox(width: 20,),
                        Expanded(
                          child: TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter password'
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    HomePage(username: userNameController.text,email: emailController.text,)));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color:const Color(0xffFFAA00),
                ),
                child: Center(child: Text('Get Started',  style: GoogleFonts.montserrat(
                  textStyle:const TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                ),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
