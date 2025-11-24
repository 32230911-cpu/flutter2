import 'package:first_flutter_app/constants/constants.dart';
import 'package:flutter/material.dart';

class CustumButton extends StatelessWidget {
  const CustumButton({
    Key? key,
    required this.btnColor,
    required this.btnTxt,
    required this.callBack,
    this.flex,
  }) : super(key: key);

  final Color btnColor;
  final String btnTxt;
  final int? flex;
  final Function callBack;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: GestureDetector(
        onTap: () => callBack(btnTxt),
        child: Container(
          width: 70,
          height: 80,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: btnColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(btnTxt, style: Constants.btnTextStyle),
        ),
      ),
    );
  }
}
