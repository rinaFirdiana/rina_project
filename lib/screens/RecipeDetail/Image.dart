import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  //_ means private, final means cannot change it
  final String _assetPath;

  ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.0,
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(
        _assetPath,
        fit: BoxFit.cover,
      ),
    );
  }
}
