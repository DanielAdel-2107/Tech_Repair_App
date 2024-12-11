import 'package:flutter/material.dart';
import 'package:tech_repair_app/core/helpers/custom_app_bar.dart';
import 'package:tech_repair_app/features/more/ui/widgets/more_screen_body.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'More', automaticallyImplyLeading: false),
      body: const MoreScreenBody(),
    );
  }
}
