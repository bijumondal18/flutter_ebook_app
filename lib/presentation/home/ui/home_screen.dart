import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/common/common.dart';
import 'package:flutter_ebook_app/presentation/home/widgets/home_screen_header.dart';
import 'package:flutter_ebook_app/presentation/home/widgets/home_screen_searchbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(right: AppSizes.dimen16),
            child: const CircleAvatar(
              backgroundColor: AppColors.darkGrey,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeScreenHeader(),
              const HomeScreenSearchBar(),
              categoriesSection()
            ],
          ),
        ),
      ),
    );
  }

  Widget categoriesSection() {
    return Container(
      margin: const EdgeInsets.all(AppSizes.dimen16),
      child: Column(
        children: [
          Text('Categories', style: AppTheme.lightTheme.textTheme.headline4),
        ],
      ),
    );
  }
}
