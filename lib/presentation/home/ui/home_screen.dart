import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/common/common.dart';
import 'package:flutter_ebook_app/presentation/home/widgets/home_screen_header.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeScreenHeader(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [_searchBar(context)],
          ),
        ),
      ),
    );
  }

  Widget _searchBar(BuildContext context) {
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
            cursorColor: AppColors.primary,
            style: AppTheme.lightTheme.textTheme.headline6,
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
              width: 50,
              padding: const EdgeInsets.all(AppSizes.dimen8),
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius:
                      BorderRadius.circular(AppSizes.cardCornerRadius)),
              child: InkWell(
                  onTap: () {
                    if (kDebugMode) {
                      print('search button pressed');
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.dimen8),
                    child: SvgPicture.asset('assets/icons/search.svg', color: AppColors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
