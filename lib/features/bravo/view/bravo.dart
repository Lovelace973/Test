import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mam_sport_sante_app/features/bravo/view/nouveauBravo.dart';

class Bravo extends ConsumerStatefulWidget {
  const Bravo({super.key});

  @override
  ConsumerState<Bravo> createState() => _Bravo();
}

class _Bravo extends ConsumerState<Bravo> {
  void _ouvrirOverlay() {
    showModalBottomSheet(
        context: context, builder: (context) => const NouveauBravo(),);
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
                        'Bienvenue sur votre boite à Bravo',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                SizedBox(
                  //color: Colors.green,
                  width: 400,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Mes bravos',
                      ),
                      IconButton(
                        onPressed: _ouvrirOverlay,
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
