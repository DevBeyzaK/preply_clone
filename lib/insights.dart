import 'package:flutter/material.dart';

class Insights extends StatefulWidget {
  final VoidCallback openDrawer;
  const Insights({super.key,required this.openDrawer});

  @override
  State<Insights> createState() => _InsightsState();
}

class _InsightsState extends State<Insights> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}