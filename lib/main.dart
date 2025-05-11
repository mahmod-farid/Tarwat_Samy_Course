import 'package:flutter/material.dart';

void main() {
  runApp( PonintsCounter());
}

class PonintsCounter extends StatefulWidget {
  @override
  State<PonintsCounter> createState() => _PonintsCounterState();
}

class _PonintsCounterState extends State<PonintsCounter> {
 int teamAPoints = 0;

 int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text('Point Counter',style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500
          )
            ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              //بيحرك الحاجات اللي فيه افقي بمسافات متساوية
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      '$teamAPoints',
                      style: TextStyle(
                        fontSize: 160,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900],
                          minimumSize: Size(150, 50)),
                      onPressed: () {

                        setState(() {
                          teamAPoints++;
                        });
                        print(teamAPoints);
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),


                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900],
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamAPoints +=2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),


                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900],
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamAPoints +=3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),

                //الخط الفاصل اللي في النص
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.black,
                    thickness: 0.5,
                  ),
                ),


                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      '$teamBPoints',
                      style: TextStyle(
                        fontSize: 160,
                      ),
                    ),


                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900],
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBPoints +=1;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),


                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900],
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBPoints +=2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),


                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900],
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBPoints +=3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),


            SizedBox( height: 50),
            //الزرار اللي في الاخر
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[900],
                  minimumSize: Size(150, 50),
                ),
                onPressed: () {
                  setState(() {
                    teamAPoints = 0;
                    teamBPoints = 0;
                  });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
               SizedBox(height: 11,)
          ],
        ),
      ),
    );
  }
}
