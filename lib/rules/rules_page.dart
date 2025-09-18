import 'package:flutter/material.dart';

class RulesPage extends StatelessWidget {
  const RulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fundo.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.black,
                ),
                child: const Center(
                  child: Text(
                    '//REGRAS DO JOGO',
                    softWrap: true,
                    style: TextStyle(
                      fontFamily: 'RobotoMono',
                      color: Colors.white,
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: MediaQuery.of(context).size.height * 0.5,
                  height: MediaQuery.of(context).size.height * 0.56,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    color: Colors.black,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          'Ao avançar para próxima tela, você não poderá retornar à página anterior.',
                          softWrap: true,
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'IMPORTANTE: Durante o jogo, haverá momentos em que será necessário abrir o aplicativo para votar entre duas opções e dar continuidade à história.',
                          softWrap: true,
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            color: Colors.red,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Esteja atento a história e tenha certeza de qual caminho irá seguir.',
                          softWrap: true,
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Tenha uma ótima experiencia e se divirta!',
                          softWrap: true,
                          style: TextStyle(
                            fontFamily: 'RobotoMono',
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
