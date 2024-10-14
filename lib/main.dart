import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/services/auth.dart';
import 'package:flutter_application_1/models/user.dart';
import 'package:flutter_application_1/screens/wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensures everything is loaded before runApp
  await Firebase.initializeApp(); // Initialize Firebase here
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser?>.value(
      value: AuthService().user, // Providing the user stream
      initialData: null,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
