import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:k_11_app/app/business_logic/bloc/user/user_bloc.dart';
import 'package:k_11_app/app/ui/shared/UILayout/spacings_shared.dart';
import 'package:k_11_app/app/ui/theme/app_color.dart';

class DetailUser extends StatelessWidget {
  const DetailUser({Key? key, this.idUser}) : super(key: key);
  final int? idUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: UIColors.background,
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          final user = state.userList![idUser! - 1];

          return ListView(children: [
            Center(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(user.avatar.toString()),
                        radius: 25.0,
                      ),
                      Column(
                        children: [
                          Text(
                            'correo: ${user.email}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          UISpacing.spacingH4,
                          Text(
                            'Nombre: ${user.first_name}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          UISpacing.spacingH4,
                          Text(
                            'Apellido: ${user.last_name}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]);
        },
      ),
    );
  }
}
