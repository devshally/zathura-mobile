import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<T?> customShowBottomModel<T>(
    {required Widget child,
    required BuildContext context,
    Color? barrierColor,
    double? maxHeight = 350}) async {
  barrierColor ??= Colors.black.withOpacity(0.75);
  return await showCupertinoModalPopup(
      context: context,
      barrierColor: barrierColor,
      builder: (BuildContext context) => Material(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Container(
              constraints: maxHeight == null
                  ? null
                  : BoxConstraints(
                      maxHeight: maxHeight,
                    ),
              padding: const EdgeInsets.all(24),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    child,
                  ],
                ),
              ),
            ),
          ));
}
