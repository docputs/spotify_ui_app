import 'package:flutter/material.dart';

class PlaylistHeader extends StatelessWidget {
  const PlaylistHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'pink floyd vey',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: const [
            CircleAvatar(maxRadius: 12),
            SizedBox(width: 8),
            Text(
              'João Vitor Soares',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          '1 Gefällt mir Angabe - 6 Std. 7 Min',
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
