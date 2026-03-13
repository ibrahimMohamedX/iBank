import 'package:flutter/material.dart';
import 'package:ibank/core/components/mainbutton.dart';
import 'package:ibank/core/consts/assets_data.dart';
import 'package:ibank/core/consts/colors_data.dart';
import 'package:ibank/core/consts/const_data.dart';
import 'package:ibank/core/consts/textstyle_data.dart';
import 'package:ibank/features/auth/presentation/widgets/pass_appbar.dart';
import 'package:ibank/features/home/presentation/widgets/visa_card.dart';
import 'package:ibank/features/profile/data/model/profileacount_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> titles = ['Account', 'Card'];
  int activeIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(context, title: 'Account and card'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            //* switcher
            SizedBox(
              height: 60,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    switcherButton(titles[index], activeIndex == index),
                separatorBuilder: (context, index) => SizedBox(width: 15),
                itemCount: 2,
              ),
            ),
            SizedBox(height: 30),
            //* page view
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  activeIndex = value;
                  setState(() {});
                },
                controller: _pageController,
                children: [
                  ProfileInfo(),
                  Column(
                    spacing: 15,
                    children: [
                      VisaCard(),
                      VisaCard(),
                      Spacer(),
                      MainButton(text: 'Add Card'),
                      Spacer(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  InkWell switcherButton(String title, bool isActive) {
    return InkWell(
      onTap: () {
        if (activeIndex == 0) {
          _pageController.nextPage(
            duration: ConstsData.duration,
            curve: Curves.easeIn,
          );
        }
        if (activeIndex == 1) {
          _pageController.previousPage(
            duration: ConstsData.duration,
            curve: Curves.easeIn,
          );
        }
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.42,
        decoration: BoxDecoration(
          color: isActive
              ? ColorsData.prim1
              : ColorsData.blackColor.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProfileAccount> profileAcount =
        ProfileAccount.getProfileAccount();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 10,
      children: [
        //* image
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: ColorsData.whiteColor, width: 2),
            color: ColorsData.prim4,
          ),
          child: Image.asset(AssetsData.Pavatar, fit: BoxFit.cover),
        ),
        //* name
        Text(
          'Push Puttichai',
          style: TextStyle(
            color: ColorsData.prim2,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: 10),
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: (context, index) =>
              _profileAccount(profileAcount[index]),
        ),
      ],
    );
  }

  Container _profileAccount(ProfileAccount profileInfo) {
    return Container(
      width: double.infinity,
      padding: ConstsData.padd_marg,
      decoration: BoxDecoration(
        color: ColorsData.whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: ConstsData.boxshadow,
      ),
      child: Column(
        spacing: 10,
        children: [
          //* header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(profileInfo.headerTitle, style: TextStylesData.bodyLarge),
              Text(profileInfo.headerValue, style: TextStylesData.bodyLarge),
            ],
          ),
          //* balance
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                profileInfo.balanceTitle,
                style: TextStylesData.bodyMedium.copyWith(
                  color: ColorsData.half_black,
                ),
              ),
              Text(
                profileInfo.balanceValue,
                style: TextStylesData.bodyMedium.copyWith(
                  color: ColorsData.prim2,
                ),
              ),
            ],
          ),
          //* branch
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                profileInfo.branchTitle,
                style: TextStylesData.bodyMedium.copyWith(
                  color: ColorsData.half_black,
                ),
              ),
              Text(
                profileInfo.branchValue,
                style: TextStylesData.bodyMedium.copyWith(
                  color: ColorsData.prim2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
