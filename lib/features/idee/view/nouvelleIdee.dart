import 'package:flutter/material.dart';
import 'package:mam_sport_sante_app/features/idee/view/creerIdee.dart';

class NouvelleIdee extends StatefulWidget {
  const NouvelleIdee({required this.onAdd, super.key});
  final void Function(CreerIdee idee) onAdd;

  @override
  State<NouvelleIdee> createState() {
    return _NouvelleIdee();
  }
}

class _NouvelleIdee extends State<NouvelleIdee> {
  final _titreController = TextEditingController();
  final _ideeController = TextEditingController();

  void _enregistrer() {
    if (_titreController.text.trim().isEmpty ||
        _ideeController.text.trim().isEmpty) {
      // ignore: inference_failure_on_function_invocation
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Données non valide'),
          content: const Text('Veuillez entrer des données valides'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
      return;
    }
    widget.onAdd(
      CreerIdee(
        titre: _titreController.text,
        idee: _ideeController.text,
      ),
    );
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _titreController.dispose();
    _ideeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titreController,
            maxLength: 40,
            decoration: const InputDecoration(
              label: Text('Titre idée'),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _ideeController,
                  maxLength: 500,
                  decoration: const InputDecoration(
                    label: Text('Idee à soumettre'),
                  ),
                ),
              ),
            ],
          ),
          //const Spacer(),
          ElevatedButton(
            onPressed: _enregistrer,
            child: const Text('Enregistrer'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Annuler'),
          ),
        ],
      ),
    );
  }
}
