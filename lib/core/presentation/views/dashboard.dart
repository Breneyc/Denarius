import 'package:denarius/core/presentation/widgets/header.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: HeaderWidget(),
        toolbarHeight: 120.0,
        automaticallyImplyLeading: false, // Esto oculta el botón de regreso
        titleSpacing: 0.0,
      ),
    );
  }

}