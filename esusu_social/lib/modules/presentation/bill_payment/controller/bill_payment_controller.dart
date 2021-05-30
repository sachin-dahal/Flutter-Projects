import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class BillPaymentController extends GetxController {
  String selectedItem = "1 GB, 400 Minutes @ 900";
  String selectedCard = "**** **** **** 1234";
  String selectedBank = "Bank Name";

  PaymentRB paymentRB = PaymentRB.Card;

  void changeRB(val) {
    paymentRB = val;
    update();
  }

  List<String> packageList = [
    "1 GB, 400 Minutes @ 900",
    "5 GB, 800 Minutes @ 1700",
    "10 GB, 1200 Minutes @ 3200",
  ];

  List<String> cardList = [
    "**** **** **** 1234",
    "**** **** **** 5678",
    "**** **** **** 9876",
  ];

  List<String> bankList = [
    "Bank Name",
    "Access Bank",
    "Ecobank",
  ];

  void changeIndex(String val) {
    selectedItem = val;
    update();
  }

  void changeCard(String val) {
    selectedCard = val;
    update();
  }

  void changeBank(String val) {
    selectedBank = val;
    update();
  }
}

enum PaymentRB {
  Card,
  Wallet,
}
