import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  AutovalidateMode? _autovalidateMode;
  final bool _isSubmitting = false;

  final _emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        children: <Widget>[
          const Image(image: AssetImage('assets/images/laptop.jpg')),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                const Image(image: AssetImage('assets/images/logo.jpg')),

                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 30),
                  child: const Column(
                    children: <Widget>[
                      Text(
                        'Bienvenue sur DiagQVT', 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'La qualité de vie, tout court', 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                Form(
                  key: _formKey,
                  autovalidateMode: _autovalidateMode,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color : const Color(0xff1A202C)),
                        ),
                        child : 
                        TextFormField(
                          controller: _emailCtrl,
                          readOnly: _isSubmitting,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            hintText: 'prenom.nom@domaine.com', 
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }

                            return null;
                          },
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
                            'Se Connecter',
                            style: TextStyle(color: Colors.white),
                            ),
                        ),
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