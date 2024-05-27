import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CongratulationPage extends ConsumerStatefulWidget {
  const CongratulationPage({super.key});

  @override
  ConsumerState<CongratulationPage> createState() => _CongratulationPageState();
}

class _CongratulationPageState extends ConsumerState<CongratulationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: <Widget>[
          const Image(image: AssetImage('assets/images/afterwork.jpg')),

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
                        'Félicitations !', 
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Vous avez complété le questionnaire.', 
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        // ignore: lines_longer_than_80_chars
                        'En remerciement, vous pouvez bénéficier des avantages DiagQVT :', 
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '\u2022  Une trentaine de vidéos pour vous aider à améliorer votre vie au travail', 
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '\u2022  Félicitez vos collègues pour leur accomplissements', 
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '\u2022  Donner vos idées pour améliorer la qualité de vie à votre travail', 
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: 300,
                  decoration: const BoxDecoration(
                    color: Color(0xff1A202C),
                  ),
                  child: const ElevatedButton(
                    onPressed: null, 
                    child: Text(
                      'Accéder à mon espace',
                      style: TextStyle(color: Colors.white),
                      ),
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
