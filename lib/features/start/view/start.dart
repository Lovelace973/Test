import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StartingPage extends ConsumerStatefulWidget {
  const StartingPage({super.key});

  @override
  ConsumerState<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends ConsumerState<StartingPage> {

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
                        'Merci de compléter notre formulaire DiagQVT pour que l’on puisse déterminer le niveau de qualité de vie dans votre entreprise. ', 
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Il y a 71 questions et cela vous prendra environ 15 mins.', 
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        // ignore: lines_longer_than_80_chars
                        'Le questionnaire est anonyme et il n’y a aucune obligation.', 
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
                      'Commencer',
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
