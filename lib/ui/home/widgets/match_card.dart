import 'package:flutter/material.dart';
import 'package:nhl/data/models/entity/entity.dart';

import 'widget_barrel.dart';

class MatchInfoCard extends StatelessWidget {
  const MatchInfoCard({
    required this.away,
    required this.home,
    Key? key,
  }) : super(key: key);

  final Team home;
  final Team away;
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
                  home.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Spacer(),
                Text(
                  away.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TeamAvatar(
                  image: Image.asset(
                    'assets/icons/teams/${home.image_path}.png',
                    fit: BoxFit.contain,
                  ),
                  showTrophy: false,
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '0 : 0',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white30),
                  ),
                ),
                Spacer(),
                TeamAvatar(
                  image: Image.asset(
                    'assets/icons/teams/${away.image_path}.png',
                    fit: BoxFit.contain,
                  ),
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

class MatchResultCard extends StatelessWidget {
  const MatchResultCard({
    required this.home,
    required this.away,
    Key? key,
  }) : super(key: key);

  final TeamStats home;
  final TeamStats away;

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
                  home.team.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Spacer(),
                Text(
                  away.team.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TeamAvatar(
                  image: Image.asset(
                    'assets/icons/teams/${home.team.image_path}.png',
                    fit: BoxFit.contain,
                  ),
                  showTrophy: home.goals > away.goals,
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${home.goals} : ${away.goals}',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white30),
                  ),
                ),
                Spacer(),
                TeamAvatar(
                  image: Image.asset(
                    'assets/icons/teams/${away.team.image_path}.png',
                    fit: BoxFit.contain,
                  ),
                  showTrophy:  home.goals < away.goals,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
