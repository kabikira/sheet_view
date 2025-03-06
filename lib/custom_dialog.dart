import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      insetPadding: const EdgeInsets.all(16), // 上下左右16pxの余白
      child: Stack(
        children: [
          // ダイアログ本体 (Padding の影響を受ける)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: size.width - 32, // 画面幅 - (16px * 2)
              height: size.height - 32, // 画面高さ - (16px * 2)
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'ダイアログの面積を最大限広げました',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('今は受け取らない'),
                  ),
                ],
              ),
            ),
          ),

          // 右上に閉じるボタン (Paddingの影響を受けない)
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0), // 余白を調整（ダイアログの端ギリギリにならないように）
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
