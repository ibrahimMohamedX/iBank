import 'package:flutter/material.dart';
import 'package:ibank/core/components/mainbutton.dart';
import 'package:ibank/core/components/maintextfield.dart';
import 'package:ibank/core/consts/colors_data.dart';
import 'package:ibank/core/consts/const_data.dart';
import 'package:ibank/core/consts/textstyle_data.dart';
import 'package:ibank/core/routes/navigation_data.dart';
import 'package:ibank/core/routes/routes_data.dart';
import 'package:ibank/features/auth/presentation/widgets/pass_appbar.dart';

class TransferConfrimScreen extends StatefulWidget {
  const TransferConfrimScreen({super.key});

  @override
  State<TransferConfrimScreen> createState() => _TransferConfrimScreenState();
}

class _TransferConfrimScreenState extends State<TransferConfrimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(context, title: 'Confirm'),
      body: Padding(
        padding: ConstsData.pagepadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                'Confirm transaction information',
                style: TextStylesData.bodyLarge.copyWith(
                  color: ColorsData.gray,
                ),
              ),
              SizedBox(),
              Form(
                child: Column(
                  spacing: 20,
                  children: [
                    //* from
                    MainTextField(labelText: 'From'),
                    //* to
                    MainTextField(labelText: 'To'),
                    //* transaction fee
                    MainTextField(labelText: 'Transaction Fee'),
                    //* content
                    MainTextField(labelText: 'Content'),
                    //* amount
                    MainTextField(labelText: 'Amount'),
                    //* otp
                    SizedBox(
                      height: 100,
                      child: Row(
                        spacing: 10,
                        children: [
                          Expanded(
                            flex: 3,
                            child: MainTextField(labelText: 'Code'),
                          ),
                          Expanded(
                            flex: 1,
                            child: MainButton(
                              text: 'Get OTP',
                              ontap: () {
                                //! resend code logic
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    MainButton(
                      text: 'Confirm',
                      ontap: () =>
                          pushTo(context, RoutesData.transfer_congrats),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
