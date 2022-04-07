import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("Facebook",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:30),),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/logo.jpg",height: 180,),
                  TextFormField(
                    decoration: InputDecoration(
                      border:OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(20),
                      ),
                      label: Text('Email'),
                      prefixIcon: Icon(Icons.mail,color: Colors.blue[900],),
                      hintText:"Enter your Email",
                    ),
                    controller: email,
                    keyboardType:TextInputType.emailAddress,
                    cursorColor: Colors.blue[900],

                  ),
                  SizedBox(height: 15,),
                  TextFormField(
                    cursorColor: password.text.length > 4 ? Colors.green : Colors.red,
                    decoration: InputDecoration(
                      border:OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(20),
                      ),
                      label:Text('Password'),
                      prefixIcon: Icon(Icons.lock,color: Colors.blue[900],),
                    ),
                    controller: password,
                    obscureText: true,
                    obscuringCharacter: '*',
                    keyboardType:TextInputType.visiblePassword ,


                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),

                    child: TextButton(onPressed: (){
                      print(' ${email.text} \n ${password.text} ');
                      email.clear();
                      password.clear();
                    }, child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ),
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
