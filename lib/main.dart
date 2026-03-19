import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveAdminDashBoard());
}

class ResponsiveAdminDashBoard extends StatelessWidget {
  const ResponsiveAdminDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ResponsiveAdminDashBoard',
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}