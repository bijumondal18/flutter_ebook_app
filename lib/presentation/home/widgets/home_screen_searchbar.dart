import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/common/common.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenSearchBar extends StatelessWidget {
  const HomeScreenSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

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
            controller: searchController,
            cursorColor: AppColors.primary,
            style: Theme.of(context).textTheme.headline6,
            decoration: InputDecoration(
                hintText: 'Search books...',
                hintStyle: Theme.of(context).textTheme.bodyText1,
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
                      print('search button pressed: ${searchController.text}');
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.dimen8),
                    child: SvgPicture.asset('assets/icons/search.svg',
                        color: AppColors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
