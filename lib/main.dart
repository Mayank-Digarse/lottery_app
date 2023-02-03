import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(  MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Lottery App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery Winning Number is 5')),
            SizedBox(height: 20,),
            Container(
              height: x == 5 ? 600 : 250,
              width: 300,
              decoration: BoxDecoration(
                color:x == 5 ? Colors.teal: Colors.grey.withOpacity(.2),
                    borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 5 ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done_all,color: Colors.green,),
                    SizedBox(height: 15,),
                    Text('Congrulations You have Won the Lottery, your number is $x \n' , textAlign: TextAlign.center,)
                  ],
                ):


                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error,color: Colors.red,),
                    SizedBox(height: 15,),
                    Text('Better Luck Next Time Your Number is $x \n Try Again', textAlign: TextAlign.center,)
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x= random.nextInt(10);
            print(x);
          setState(() {

          });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}

