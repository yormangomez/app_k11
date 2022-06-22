import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:k_11_app/app/business_logic/bloc/user/user_bloc.dart';
import 'package:k_11_app/app/router/app_router.dart';
import 'package:k_11_app/app/ui/shared/UILayout/paddings_shared.dart';
import 'package:k_11_app/app/ui/shared/UILayout/spacings_shared.dart';
import 'package:k_11_app/app/ui/shared/button/abstract_button.dart';
import 'package:k_11_app/app/ui/theme/app_color.dart';

class InformList extends StatelessWidget {
  const InformList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 104.0,
                height: 52.0,
                decoration: BoxDecoration(color: UIColors.background, borderRadius: BorderRadius.circular(40.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.star_outlined,
                      color: UIColors.yellow,
                    ),
                    Text(
                      '4.8',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: UIColors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(children: const [
                  Icon(
                    Icons.monetization_on,
                    color: UIColors.yellow,
                  ),
                  Text(
                    '20',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: UIColors.yellow),
                  )
                ]),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Beef Burger',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: UIColors.black),
              ),
              Container(
                color: Colors.transparent,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle_outline,
                          color: UIColors.background,
                        )),
                    const Text('01', style: TextStyle(fontSize: 18.0)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_circle_outline,
                          color: UIColors.background,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: UIPadding.paddingH32,
          child: Text(
            '''
Big juicy burger with cheese lettuce
tomato onions and special sauce''',
            style: TextStyle(color: UIColors.text, fontSize: 18.0),
            textAlign: TextAlign.justify,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 32.0, top: 32.0, bottom: 16.0),
          child: Text(
            'Add ons',
            style: TextStyle(fontWeight: FontWeight.bold, color: UIColors.black, fontSize: 18.0),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 75.0,
              width: 75.0,
              decoration: BoxDecoration(color: UIColors.white, borderRadius: BorderRadius.circular(25.0)),
              child: Image.asset('assets/images/queso.png'),
            ),
            Container(
              height: 75.0,
              width: 75.0,
              decoration: BoxDecoration(color: UIColors.white, borderRadius: BorderRadius.circular(25.0)),
              child: Image.asset('assets/images/salsa.png'),
            ),
            Container(
              height: 75.0,
              width: 75.0,
              decoration: BoxDecoration(color: UIColors.white, borderRadius: BorderRadius.circular(25.0)),
              child: Image.asset('assets/images/salsa.png'),
            ),
          ],
        ),
        UISpacing.spacingH16,
        Center(
          child: AbstractButton.primary(
            colorButtom: UIColors.background,
            onPressed: () async {
              Navigator.pushNamed(context, Routes.USER);
            },
            title: const Text(
              'Add to cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
