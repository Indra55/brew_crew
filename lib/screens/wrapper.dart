import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/authenticate/authenticate.dart';
import 'package:flutter_application_1/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/models/user.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // Handle nullable AppUser using AppUser?
    final AppUser? user = Provider.of<AppUser?>(context);

    // Check if user is null and show the appropriate screen
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
