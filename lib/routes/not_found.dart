import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: Center(
        child: Text('Page not founds',
          textAlign: TextAlign.justify,
          textDirection: TextDirection.rtl,
          softWrap: true,
          overflow: TextOverflow.visible,
          maxLines: 5,
          semanticsLabel: 'hello',
          semanticsIdentifier: 'hello 2',
          textWidthBasis: TextWidthBasis.parent,
            ),
      ),
    );
  }
}