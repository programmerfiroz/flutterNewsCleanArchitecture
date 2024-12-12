import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/core/constants/colors.dart';

void loader(BuildContext context) {
  showDialog(
    barrierColor: Colors.transparent,
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) => Center(
      child: Center(
        child: CircularProgressIndicator(),
      ),
      // child: CupertinoActivityIndicator(
      //   radius: 20,
      // ),
    ),
  );
}

void showToastMessage(BuildContext context, String toastMessage) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(toastMessage),
    duration: const Duration(seconds: 2),
  ));
}

void alert_single_btn(BuildContext context, String title, String content) {
  showDialog(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.of(context).pop(false);
            print('YES');
            Get.back();
            Get.back();
          },
          child: const Text(
            'OK',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              height: 1.00,
            ),
          ),
        ),
      ],
    ),
  );
}
