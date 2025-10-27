import 'package:flutter_tdd/features/auth/domain/enums/status_enum.dart';

class StatusModel{

  bool isSelected;
  final StatusEnum statusEnum;

  StatusModel({required this.statusEnum,this.isSelected = false});

}