import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwat_samy/cubit/counter_cubit.dart';
import 'package:tharwat_samy/cubit/counter_state.dart';

void main() {
  runApp( PonintsCounter());
}

class PonintsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit , CounterState>(builder: (context , state) {
      return Scaffold(
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
                      '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                      style: TextStyle(
                        fontSize: 160,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900],
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "A", buttonNumber: 1);
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
                        BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "A", buttonNumber: 2);
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
                        BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "A", buttonNumber: 3);
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
                      '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                      style: TextStyle(
                        fontSize: 160,
                      ),
                    ),


                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900],
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "B", buttonNumber: 1);
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
                        BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "B", buttonNumber: 2);
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
                        BlocProvider.of<CounterCubit>(context).TeamIncrement(team: "B", buttonNumber: 3);
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
                },
                child: Text(
                  'Reset',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
            SizedBox(height: 11,)
          ],
        ),
      );
    }, listener:(context , state) {

    });
  }
}

