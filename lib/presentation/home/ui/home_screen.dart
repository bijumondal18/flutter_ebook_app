import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/common/common.dart';
import 'package:flutter_ebook_app/presentation/home/widgets/home_screen_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeScreenHeader(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [searchBar(context)],
          ),
        ),
      ),
    );
  }

  Widget searchBar(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSizes.dimen16),
      width: MediaQuery.of(context).size.width,
      height: AppSizes.searchBarHeight,
      decoration: BoxDecoration(
          color: AppColors.textFieldBg,
          borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius)),
      child: Stack(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: 'Search books...',
                hintStyle: AppTheme.lightTheme.textTheme.bodyText1,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(
                    left: AppSizes.dimen16, right: AppSizes.dimen48)),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            top: 0,
            child: Container(
              width: 60,
              padding: const EdgeInsets.all(AppSizes.dimen8),
              decoration: BoxDecoration(
                  color: AppColors.orange,
                  borderRadius:
                      BorderRadius.circular(AppSizes.cardCornerRadius)),
              child: InkWell(
                onTap: () {
                  if (kDebugMode) {
                    print('search button pressed');
                  }
                },
                child: const Icon(
                  Icons.search,
                  color: AppColors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
