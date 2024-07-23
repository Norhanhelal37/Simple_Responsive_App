import "package:app/screans/start.dart";
import "package:flutter/material.dart";

main() {
  runApp(const Habbit());
}

class Habbit extends StatelessWidget {
  const Habbit({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Start(),
    );
  }
}
