import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
             // margin: EdgeInsets.all(64.0),
              height: 150,
              width: 330,
              color:Colors.yellow,
              child: Text(
                  "Implemeting Single Screen UI",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 400,
                child: GridView.count(
                    crossAxisCount:2,
                    crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                  // height:300,
                  // width: 400,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.black, // Choose your border color
                      width: 1,
                    ),

                      image: DecorationImage(
                        image: AssetImage("assets/images/bkg1.png"),
                        fit: BoxFit.cover,
                      ),
                  ),
                      child: Center(
                      child: Text(
                        "First Grid",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 18,
                        ),

                      ),
                      ),
                    ),
                    Container(
                      // height:110,
                      // width: 110,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.black, // Choose your border color
                          width: 1,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/bkg8.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Second Grid",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18,
                          ),

                        ),
                      ),
                    ),
                    Container(
                      // height:110,
                      // width: 110,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.green, // Choose your border color
                          width: 1,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/bkg7.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Third Grid",
                          style: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 18,
                          ),

                        ),
                      ),
                    ),
                    Container(
                      // height:110,
                      // width: 110,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        border: Border.all(
                          color: Colors.black, // Choose your border color
                          width: 1,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/bkg6.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Fourth Grid",
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 18,
                          ),

                        ),
                      ),
                    ),
                  ],
                ),

              ),
            ),
          Padding(
              padding: EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                  "Text Button",
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
              ),
            ),
          ),
          ],
        ),
      )
    );
  }
}

