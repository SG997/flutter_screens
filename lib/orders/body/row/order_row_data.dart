// To parse this JSON data, do
//
//     final pageDataModel = pageDataModelFromJson(jsonString);

import 'dart:convert';

OrderRowData pageDataModelFromJson(String str) => OrderRowData.fromJson(json.decode(str));

String pageDataModelToJson(OrderRowData data) => json.encode(data.toJson());

class OrderRowData {
  OrderRowData({
    this.imageUrl,
    this.headLine,
    this.secondHeadLine,
    this.amount,
    this.areaNumber,
  });

  String? imageUrl;
  String? headLine;
  String? secondHeadLine;
  String? amount;
  String? areaNumber;

  factory OrderRowData.fromJson(Map<String, dynamic> json) => OrderRowData(
    imageUrl: json["imageUrl"],
    headLine: json["headline"],
    secondHeadLine: json["secondHeadline"],
    amount: json["amount"],
    areaNumber: json["areaNumber"],
  );

  Map<String, dynamic> toJson() => {
    "imageUrl": imageUrl,
    "headline": headLine,
    "secondHeadline": secondHeadLine,
    "amount": amount,
    "areaNumber": areaNumber,
  };
}
