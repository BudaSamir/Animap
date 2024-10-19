import 'package:flutter/material.dart';

import '../utils/constants/app_assets.dart';

class NoConnections extends StatelessWidget {
  const NoConnections({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.noNetwork),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
