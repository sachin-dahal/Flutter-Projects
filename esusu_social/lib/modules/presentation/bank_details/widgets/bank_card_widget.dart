import 'package:esusu_social/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankCardWidget extends StatelessWidget {
  final String bankName;
  final String accountHolder;
  final String accNum;

  BankCardWidget({
    @required this.bankName,
    @required this.accountHolder,
    @required this.accNum,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        color: kTextColor3,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
              color: kShadowColor.withOpacity(0.3),
              offset: Offset(0, 0),
              blurRadius: 5.0)
        ],
      ),
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.grey[400],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bankName,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                            color: kPrimaryColor)),
                  ),
                  Text(
                    accountHolder,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                            color: kTextColor1)),
                  ),
                  Text(
                    accNum,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: kTextColor1)),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 25.0,
            padding: EdgeInsets.only(right: 15.0),
            child: Image(
              image: AssetImage("images/delete.png"),
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
