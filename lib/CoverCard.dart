import 'package:flutter/material.dart';

class CoverCard extends StatelessWidget {

  final String url;

  const CoverCard({ this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Image(
        image: NetworkImage(url),
      ),
    );
  }
}
