import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:k_11_app/app/business_logic/bloc/user/user_bloc.dart';
import 'package:k_11_app/app/router/app_router.dart';
import 'package:k_11_app/app/ui/shared/button/abstract_button.dart';
import 'package:k_11_app/app/ui/theme/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: CircleAvatar(
                radius: 170.0,
                backgroundColor: UIColors.white,
                child: ClipRRect(
                  child: Image.asset('assets/images/hambu.png'),
                  borderRadius: BorderRadius.circular(50.0),
                )),
          ),
          const Center(
              child: Text(
            '''
    Enjoy
Your Food
''',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0, color: UIColors.white),
          )),
          AbstractButton.primary(
            colorButtom: UIColors.white,
            onPressed: () async {
              context.read<UserBloc>().add(UserLoadEvent());

              Navigator.pushNamed(context, Routes.INFO);
            },
            title: const Text(
              'Get Started',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
          )
        ],
      ),
    );
  }
}
