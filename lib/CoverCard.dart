import 'package:flutter/material.dart';

class CoverCard extends StatelessWidget {

  final String url;

  const CoverCard({ this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      height: 200,
      width: 100,
      color: Colors.blue[900],
      child: Image(
        image: NetworkImage(url),
      ),
    );
  }
}
