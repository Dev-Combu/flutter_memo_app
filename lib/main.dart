import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_memo_app/home.dart';
import 'package:get/get.dart';

import 'memo_list_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyDbUzuvy06I37hLf_UU6fQtDuaLJYo2GKU',
      appId: '1:1063118956139:android:300bcaea94d51c0240732e',
      messagingSenderId: '1063118956139',
      projectId: 'flutter-memo-app-8e89a',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(MemoListController());
      }),
      home: Home(),
    );
  }
}
