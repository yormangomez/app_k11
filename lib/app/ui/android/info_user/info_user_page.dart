import 'package:flutter/material.dart';
import 'package:k_11_app/app/ui/android/info_user/widget/inform_list.dart';
import 'package:k_11_app/app/ui/shared/UILayout/paddings_shared.dart';
import 'package:k_11_app/app/ui/shared/UILayout/spacings_shared.dart';
import 'package:k_11_app/app/ui/theme/app_color.dart';

class InfoUserPage extends StatelessWidget {
  const InfoUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.background,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 8.0),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_outlined,
                  color: UIColors.white,
                  size: 32.0,
                )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UISpacing.spacingH32,
              UISpacing.spacingH32,
              UISpacing.spacingH16,
              UISpacing.spacingH4,
              Container(
                height: 206.0,
                width: 264.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: const [
                    BoxShadow(
                      color: UIColors.blue,
                      blurRadius: 60,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Image.asset('assets/images/mc.png'),
              ),
              UISpacing.spacingH32,
              UISpacing.spacingH32,
              UISpacing.spacingH32,
              UISpacing.spacingH4,
              Container(
                width: double.infinity,
                height: 405.0,
                decoration: const BoxDecoration(
                  color: UIColors.blue,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
                  boxShadow: [
                    BoxShadow(
                      color: UIColors.blue,
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: InformList(),
              )
            ],
          )
        ],
      ),
    );
  }
}
