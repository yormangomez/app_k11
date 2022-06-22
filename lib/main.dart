import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:k_11_app/app/business_logic/bloc/user/user_bloc.dart';
import 'package:k_11_app/app/router/app_pages.dart';
import 'package:k_11_app/app/router/app_router.dart';

void main() {
  runApp(AnnotatedRegion<SystemUiOverlayStyle>(
      child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => UserBloc()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            routes: getApplicationsRoutes(),
            initialRoute: Routes.INITIAL,
            theme: ThemeData(
                // primarySwatch: Colors.blue,
                ),
          )),
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      )));
}
