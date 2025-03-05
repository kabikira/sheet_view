import 'package:flutter/material.dart';
import 'package:sheet_view/custom_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('ダイアログテスト')),
        body: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => _showCustomDialog(context),
        child: const Text('ダイアログを表示'),
      ),
    );
  }

  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // 外側タップで閉じない
      builder: (context) => const CustomDialog(), // 別ファイルのダイアログを呼び出す
    );
  }
}
