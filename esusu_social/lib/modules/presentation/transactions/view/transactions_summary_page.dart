import 'package:esusu_social/common/kAppBar.dart';
import 'package:esusu_social/modules/presentation/transactions/widget/transaction_card_widget.dart';
import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionsSummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            KAppBar(text: "Transactions Summary"),
            SizedBox(height: 10.0),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        icon: Icon(
                          FeatherIcons.x,
                          size: 30.0,
                          color: kPrimaryColor,
                        ),
                        onPressed: () => Get.back()),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Transaction Summary",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.w700,
                                  color: kTextColor1)),
                        ),
                        SizedBox(height: 20.0),
                        _buildAmountDatePanel(),
                        SizedBox(height: 40.0),
                        _buildStatusReferencePanel(),
                        SizedBox(height: 40.0),
                        _buildSourceBankPanel(),
                        SizedBox(height: 40.0),
                        _buildNotePanel(),
                        SizedBox(height: 40.0),
                        _buildNewBalancePanel(),
                      ],
                    ),
                  ),
                  SizedBox(height: 100.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildNewBalancePanel() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "New Balance",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor)),
        ),
        Text(
          "123,456 INR",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: kTextColor1)),
        ),
      ],
    );
  }

  Column _buildNotePanel() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Note",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor)),
        ),
        Text(
          "Top Up",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: kTextColor1)),
        ),
      ],
    );
  }

  Column _buildSourceBankPanel() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Source Bank",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor)),
        ),
        Text(
          "Wema Bank PIc",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: kTextColor1)),
        ),
        Text(
          "Daniel Aleoghenna Ozeh",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: kTextColor1)),
        ),
        Text(
          "*******1388",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: kTextColor1)),
        ),
      ],
    );
  }

  Row _buildStatusReferencePanel() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Status",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor)),
            ),
            Text(
              "Success",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: kTextColor1)),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Reference",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor)),
            ),
            Text(
              "MNFYI44I",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: kTextColor1)),
            ),
            Text(
              "20210518182248",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: kTextColor1)),
            ),
            Text(
              "012314",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: kTextColor1)),
            ),
          ],
        ),
      ],
    );
  }

  Row _buildAmountDatePanel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Amount",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor)),
            ),
            Text(
              "10,000 INR",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: kTextColor1)),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Date",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor)),
            ),
            Text(
              "May 21, 2021",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: kTextColor1)),
            ),
          ],
        ),
      ],
    );
  }
}
