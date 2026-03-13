import 'package:flutter/material.dart';
import 'package:ibank/core/components/mainbutton.dart';
import 'package:ibank/core/components/maintextfield.dart';
import 'package:ibank/core/consts/colors_data.dart';
import 'package:ibank/core/consts/const_data.dart';
import 'package:ibank/core/consts/textstyle_data.dart';
import 'package:ibank/core/routes/navigation_data.dart';
import 'package:ibank/core/routes/routes_data.dart';
import 'package:ibank/features/auth/presentation/widgets/pass_appbar.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  int transactionSelection = 0;
  int beneficiarySelection = 0;
  bool checkbox = false;
  final List<IconData> transactionIcon = [
    Icons.credit_card,
    Icons.person,
    Icons.home_work_outlined,
  ];
  final List<String> transactionTitle = [
    'Transfer viacard number',
    'Transfer tothe same bank',
    'Transfer toanother bank',
  ];
  final List<String> beneficiaryTitle = ['', 'Emma', 'Ahmed', 'Amr'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(context, title: 'Transfer'),
      body: Padding(
        padding: ConstsData.pagepadding,
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(),
              MainTextField(labelText: 'VISA number'),
              Text(
                'Available balance : 10,000\$',
                style: TextStylesData.bodyMedium.copyWith(
                  color: ColorsData.prim1,
                ),
              ),
              SizedBox(),
              //* transaction section
              Text(
                'Choose transaction',
                style: TextStylesData.bodyMedium.copyWith(
                  color: ColorsData.gray,
                ),
              ),
              SizedBox(),
              SizedBox(
                height: 130,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemBuilder: (context, index) => _transactionItem(
                    icon: transactionIcon[index],
                    title: transactionTitle[index],
                    isSelect: index == transactionSelection,
                    index: index,
                  ),
                ),
              ),
              SizedBox(),
              //* beneficiary section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose beneficiary',
                    style: TextStylesData.bodyMedium.copyWith(
                      color: ColorsData.gray,
                    ),
                  ),
                  Text(
                    'Find beneficiary',
                    style: TextStylesData.bodyMedium.copyWith(
                      color: ColorsData.prim1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 130,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemBuilder: (context, index) => _beneficiaryItem(
                    title: beneficiaryTitle[index],
                    isSelect: index == beneficiarySelection,
                    index: index,
                  ),
                ),
              ),
              SizedBox(),
              //* info
              //* name
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 15,
                  children: [
                    MainTextField(labelText: 'Name'),
                    MainTextField(labelText: 'Number'),
                    MainTextField(labelText: '\$1000'),
                    MainTextField(labelText: '\$1000'),
                    Text(
                      'One thousand dollar',
                      style: TextStylesData.bodyMedium.copyWith(
                        color: ColorsData.prim1,
                      ),
                    ),
                  ],
                ),
              ),
              //* save button
              Row(
                children: [
                  Checkbox(
                    value: checkbox,
                    onChanged: (value) {
                      checkbox = value!;
                      setState(() {});
                    },
                  ),
                  Text(
                    'Save to directory of beneficiary ',
                    style: TextStylesData.bodyMedium,
                  ),
                ],
              ),
              //* Confirm button
              MainButton(
                text: 'Confirm',
                ontap: () => pushTo(context, RoutesData.transfer_confirm),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _transactionItem({
    required IconData icon,
    required String title,
    required bool isSelect,
    required int index,
  }) {
    return InkWell(
      onTap: () {
        transactionSelection = index;
        setState(() {});
      },
      child: Container(
        padding: ConstsData.padd_marg,
        decoration: BoxDecoration(
          color: isSelect ? ColorsData.prim1 : ColorsData.accent,
          borderRadius: ConstsData.raduis_medium,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Icon(icon, color: ColorsData.whiteColor, size: 50),
            SizedBox(
              width: 120,
              child: Text(
                title,
                style: TextStylesData.bodyMedium.copyWith(
                  color: ColorsData.whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _beneficiaryItem({
    required String title,
    required bool isSelect,
    required int index,
  }) {
    return InkWell(
      onTap: () {
        beneficiarySelection = index;
        setState(() {});
      },
      child: AnimatedContainer(
        duration: ConstsData.duration,
        padding: ConstsData.padd_marg,
        decoration: BoxDecoration(
          color: isSelect && index != 0
              ? ColorsData.prim1
              : ColorsData.whiteColor,
          boxShadow: ConstsData.boxshadow,
          borderRadius: ConstsData.raduis_medium,
        ),
        child: index == 0
            ? CircleAvatar(
                radius: 30,
                backgroundColor: ColorsData.accent,
                child: Icon(Icons.add, size: 30, color: ColorsData.whiteColor),
              )
            : Column(
                spacing: 10,
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: ColorsData.accent,
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: ColorsData.whiteColor,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStylesData.bodyMedium.copyWith(
                      color: isSelect
                          ? ColorsData.whiteColor
                          : ColorsData.blackColor,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
