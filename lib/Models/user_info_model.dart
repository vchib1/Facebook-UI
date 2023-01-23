import 'package:flutter/cupertino.dart';

class UserInfoModel{
  final IconData icon;
  final String firstLine;
  final String secondLine;

  const UserInfoModel({
    required this.firstLine,
    required this.secondLine,
    required this.icon,
  });

}