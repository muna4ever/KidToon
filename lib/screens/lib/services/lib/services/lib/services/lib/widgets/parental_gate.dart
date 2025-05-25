import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'dart:math';

class ParentalGate {
  static Future<bool> show(BuildContext context) async {
    final rand = Random();
    int a = rand.nextInt(5) + 5;
    int b = rand.nextInt(5) + 5;
    TextEditingController controller = TextEditingController();
    bool passed = false;
    final loc = AppLocalizations.of(context)!;
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          title: Text(loc.parentalGateTitle),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(loc.parentalGatePrompt.replaceAll('{a}', '$a').replaceAll('{b}', '$b')),
              TextField(
                controller: controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: loc.parentalGatePrompt.replaceAll('{a}', '$a').replaceAll('{b}', '$b')),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (controller.text.trim() == '${a + b}') {
                  passed = true;
                  Navigator.of(context).pop();
                } else {
                  controller.clear();
                }
              },
              child: Text(loc.parentalGateSubmit),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(loc.parentalGateCancel),
            ),
          ],
        );
      },
    );
    return passed;
  }
}
