import 'package:cognitivyskills/Levels/AllForLevels/menulevel.dart';
import 'package:cognitivyskills/ui/profilemenu.dart';
import 'package:cognitivyskills/ui/listgame.dart';
import 'package:cognitivyskills/ui/resultsUser.dart';
import 'package:flutter/material.dart';

import 'ListAttempts.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
        child: BottomAppBar(
          child: Container(
            height: 40.0,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      try {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => const ListGame()),
                          (route) => false,
                        );
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: const Icon(Icons.gamepad, color: Colors.black),
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     try {
                  //       Navigator.pushAndRemoveUntil(
                  //         context,
                  //         MaterialPageRoute(builder: (context) =>  ResultsUser()),
                  //             (route) => false,
                  //       );
                  //     } catch (e) {
                  //       print(e);
                  //     }
                  //   },
                  //   child: const Icon(Icons.account_box, color: Colors.black),
                  // ),
                  InkWell(
                    onTap: () {
                      try {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => const profilemenu()),
                          (route) => false,
                        );
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: const Icon(Icons.account_box, color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => ListAttempts()),
                              (route) => false,
                        );
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: const Icon(Icons.abc, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}