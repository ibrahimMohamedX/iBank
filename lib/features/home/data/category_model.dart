import 'package:ibank/core/consts/assets_data.dart';

class CategoryModel {
  final String caticon;
  final String catname;
  final String pageroutename;

  CategoryModel({
    required this.caticon,
    required this.catname,
    required this.pageroutename,
  });

  static List<CategoryModel> categories = [
    CategoryModel(
      caticon: IconsData.Swallet,
      catname: 'Acount and Cards',
      pageroutename: '/wallet',
    ),
    CategoryModel(
      caticon: IconsData.Stransfer,
      catname: 'Transfer',
      pageroutename: '/transfer',
    ),
    CategoryModel(
      caticon: IconsData.Swithdraw,
      catname: 'Withdraw',
      pageroutename: '/withdraw',
    ),
    CategoryModel(
      caticon: IconsData.Smobile_prepaid,

      catname: 'Mobile Prepaid',
      pageroutename: '/mobile-prepaid',
    ),
    CategoryModel(
      caticon: IconsData.Spay_thebill,
      catname: 'Pay the Bill',
      pageroutename: '/pay-the-bill',
    ),
    CategoryModel(
      caticon: IconsData.Ssave_online,
      catname: 'Save Online',
      pageroutename: '/save-online',
    ),
    CategoryModel(
      caticon: IconsData.Scredit_card,
      catname: 'Credit Card',
      pageroutename: '/credit-card',
    ),
    CategoryModel(
      caticon: IconsData.Stransaction_report,
      catname: 'Transaction Report',
      pageroutename: '/transaction-report',
    ),
    CategoryModel(
      caticon: IconsData.Scontact,
      catname: 'Beneficiary',
      pageroutename: '/beneficiary',
    ),
  ];
}
