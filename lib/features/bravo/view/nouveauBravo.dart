import 'package:flutter/material.dart';

class NouveauBravo extends StatefulWidget {
  const NouveauBravo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NouveauBravo();
  }
}

class _NouveauBravo extends State<NouveauBravo> {
  final _bravoController = TextEditingController();

  @override
  void dispose() {
    _bravoController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _bravoController,
            maxLength: 40,
            decoration: const InputDecoration(
              label: Text("Féliciter quelqu'un"),
            ),
          ),

          //const Spacer(),
          ElevatedButton(
            onPressed: () {
              print(_bravoController.text);
            },
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
