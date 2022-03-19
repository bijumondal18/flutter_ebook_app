import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/common/common.dart';

class HomeScreenHeader extends StatelessWidget implements PreferredSizeWidget {

  const HomeScreenHeader({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(AppSizes.appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: RichText(
        text: TextSpan(
            text: 'Hi, Biju',
            style: Theme.of(context).textTheme.bodyText1,
            children: [
              TextSpan(
                  text: '\nDiscover Latest Books',
                  style: Theme.of(context).textTheme.headline3)
            ]),
      ),
    );
  }
}