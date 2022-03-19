import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/common/common.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: AppSizes.dimen16),
                child: const CircleAvatar(
                  backgroundColor: AppColors.darkGrey,
                  maxRadius: 50,
                  minRadius: 50,
                ),
              ),
              const SizedBox(
                height: AppSizes.dimen30,
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.person_add_rounded),
                title: Text('Change Email and Password',
                    style: AppTheme.lightTheme.textTheme.headline6),
                subtitle: Text(
                  'Update account credentials',
                  style: AppTheme.lightTheme.textTheme.bodyText2,
                ),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.person_rounded),
                title: Text('Personal information',
                    style: AppTheme.lightTheme.textTheme.headline6),
                subtitle: Text(
                  'Update personal information',
                  style: AppTheme.lightTheme.textTheme.bodyText2,
                ),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
