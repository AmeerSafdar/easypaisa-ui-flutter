import 'package:easypaisa_ui/presentation_layer/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/navbar_bloc/nav_bloc.dart';
import 'helper/config/SizeConfig.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<NavigationCubit>(
              create: (context) => NavigationCubit(),
            ),
          ],
          child: OrientationBuilder(
            builder: (context, orientation) {
              SizeConfig().init(constraints, orientation);
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'esaypaisa ui design',
                theme: ThemeData(primarySwatch: Colors.green),
                home: const Welcome(),
                // home: DashBoardScreen(),
              );
            },
          ),
        );
      },
    );
  }
}
