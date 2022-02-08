import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:virtusa2/cubit/seat_cubit.dart';
import 'package:virtusa2/ui/home_page.dart';
import 'package:virtusa2/ui/seat_page.dart';
import 'package:virtusa2/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SeatCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomePage(),
          '/home': (context) => ChooseSeatPage(dest[0], ''),
        },
      ),
    );
  }
}
