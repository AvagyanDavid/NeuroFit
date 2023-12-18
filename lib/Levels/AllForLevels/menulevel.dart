import 'package:flutter/material.dart';
import '../../text/text.dart';
import '../../ui/listgame.dart';

void menulevel(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(levelmenu),
        content: const Text(wtf),
        actions: [
          ElevatedButton(
            child: const Text(nthg),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (context) => const ListGame()),
              );
            },
            child: const Text(exitlevel),
          )
        ],
      );
    },
  );
}