import 'package:flutter/material.dart';
import 'package:mam_sport_sante_app/features/idee/view/afficherIdee.dart';
import 'package:mam_sport_sante_app/features/idee/view/creerIdee.dart';

class ListIdee extends StatelessWidget {
  const ListIdee({required this.idees, super.key});
  final List<CreerIdee> idees;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: idees.length,
        itemBuilder: (context, index) => AfficherIdee(
              idees[index],
            ),
        padding: const EdgeInsets.symmetric(vertical: 5.0));
  }
}
