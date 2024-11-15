import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'view_models/auth_view_model.dart';
import 'views/login_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthViewModel>(
          create: (_) => AuthViewModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter MVVM Login',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: LoginPage(),
        debugShowCheckedModeBanner: false, // Quita el banner de debug
      ),
    );
  }
}
