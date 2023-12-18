import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import './startHome.dart';
import 'package:cognitivyskills/ui/listgame.dart';


class checkauth extends StatefulWidget {
  const checkauth({super.key});

  @override
  State<checkauth> createState() => _checkauthState();
}

class _checkauthState extends State<checkauth> {

  bool isLoggedIn = false;

  @override
  void initState() {
    final User? user = Supabase.instance.client.auth.currentUser;
    if (user == null) {
      setState(() {
        isLoggedIn = false;
      });
    } else {
      setState(() {
        isLoggedIn = true;
      });
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return isLoggedIn ? const ListGame() : const startHome();
  }
}
