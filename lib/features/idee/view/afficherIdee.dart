import 'package:flutter/material.dart';
import 'package:mam_sport_sante_app/features/idee/view/creerIdee.dart';

class AfficherIdee extends StatelessWidget {
  const AfficherIdee(this.idee, {super.key});
  final CreerIdee idee;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(
              idee.titre,
              softWrap: true,
              overflow: TextOverflow.clip,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  idee.idee,
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
