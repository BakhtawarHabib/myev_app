import 'package:flutter/material.dart';
import 'package:myev_app/utils/text_helper.dart';
import 'package:myev_app/widgets/customBack_button.dart';
import '../../utils/screen_util.dart';

class AddDebitCreditCard extends StatefulWidget {
  const AddDebitCreditCard({super.key});

  @override
  State<AddDebitCreditCard> createState() => _AddDebitCreditCardState();
}

class _AddDebitCreditCardState extends State<AddDebitCreditCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Padding(
            padding: EdgeInsets.all(20.0),
            child: CustomBackButton(),
          ),
          centerTitle: true,
          title: poppinsText(
              text: "Add Debit and Credit Card",
              fontSize: 20.sp,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
          ),
        ));
  }
}
