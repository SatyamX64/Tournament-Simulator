import 'package:flutter/material.dart';
import 'package:nhl/gen/assets.gen.dart';

import 'widget_barrel.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 120,
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Golden Chariots',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Spacer(),
                Text(
                  'Canedians',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TeamAvatar(
                  image: Assets.icons.coyote.image(fit: BoxFit.contain),
                  showTrophy: true,
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '5 - 2',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white30),
                  ),
                ),
                Spacer(),
                TeamAvatar(
                  image: Assets.icons.coyote.image(fit: BoxFit.contain),
                  showTrophy: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
