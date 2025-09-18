import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final VoidCallback? onNext;

  const HomePage({super.key, this.onNext});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/fundo.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'SEJA BEM VINDO(A)\n A PEÇA JOGO',
            style: TextStyle(
              fontFamily: 'RobotoMono',
              color: Colors.white,
              fontSize: 32,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '//INICIAR JOGO',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
                size: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
