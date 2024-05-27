import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mam_sport_sante_app/features/idee/view/creerIdee.dart';
import 'package:mam_sport_sante_app/features/idee/view/listIdee.dart';
import 'package:mam_sport_sante_app/features/idee/view/nouvelleIdee.dart';

class Idee extends ConsumerStatefulWidget {
  const Idee({super.key});

  @override
  ConsumerState<Idee> createState() => _Idee();
}

class _Idee extends ConsumerState<Idee> {
  final List<CreerIdee> ideeEnregistrer = [];
  void _ouvrirOverlay() {
    // ignore: inference_failure_on_function_invocation
    showModalBottomSheet(
      context: context,
      builder: (context) => NouvelleIdee(
        onAdd: _addIdee,
      ),
    );
  }

  void _addIdee(CreerIdee idee) {
    setState(
      () {
        ideeEnregistrer.add(idee);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const Image(image: AssetImage('assets/images/reunion.jpg')),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(image: AssetImage('assets/images/logo.jpg')),
                Container(
                  width: 300,
                  margin: const EdgeInsets.only(top: 20, bottom: 30),
                  child: const Column(
                    children: <Widget>[
                      Text(
                        // ignore: lines_longer_than_80_chars
                        'Bienvenue sur votre boite à idée ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Mes idées',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: _ouvrirOverlay,
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 370,
                  height: 300,
                  child: ListIdee(idees: ideeEnregistrer),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
