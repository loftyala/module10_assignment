import 'package:flutter/material.dart';

class GreetingPage extends StatefulWidget {
  const GreetingPage({super.key});

  @override
  State<GreetingPage> createState() => _GreetingPageState();
}

class _GreetingPageState extends State<GreetingPage> {
  final snackBar= SnackBar(content: Text('Button pressed'));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Greeting Page',
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            color: Colors.black
          )),
        centerTitle: true,
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Hello,World!",
              style: TextStyle(
              color: Colors.red,
                  fontWeight: FontWeight.bold,
                fontSize: 50,
            ),),
          ),
          Center(
            child: Text("Welcome to Flutter!",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 28,
              ),),
          ),
          SizedBox(height: 20,),
          Image.asset('images/nice house.jpeg',
            width: double.infinity,),
          SizedBox(height: 30,),

          Container(
            width: double.infinity,
            
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
            color: Colors.green
            ),
            child: TextButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },

              style: TextButton.styleFrom(

              ),

              child:Text("Press here",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 35,
              ),), ),
          )


        ],
      ),
    );
  }
}
