import 'package:flutter/material.dart';

class TermsConditionsPage extends StatefulWidget {
  final VoidCallback? onNext;

  const TermsConditionsPage({super.key, this.onNext});

  @override
  State<TermsConditionsPage> createState() => _TermsConditionsPageState();
}

class _TermsConditionsPageState extends State<TermsConditionsPage> {
  bool accepted = false;

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
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.black,
                ),
                child: const Center(
                  child: Text(
                    '//TERMOS E CONDIÇÕES',
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            'Termos e Condições \n\n'
                            'Ao usar este aplicativo, você concorda com os seguintes pontos:\n\n'
                            '1 - O app tem como objetivo oferecer informações sobre peças, regras e atividades do teatro.\n\n'
                            '2 - O uso deve ser pessoal e respeitoso, sendo proibido qualquer finalidade ilegal ou prejudicial.\n\n'
                            '3 - As informações podem mudar sem aviso prévio e podem ocorrer falhas técnicas temporárias.\n\n'
                            '4 - Todo o conteúdo do app é de propriedade do teatro, não podendo ser copiado ou distribuído sem autorização.\n\n'
                            '5 - O teatro não se responsabiliza por danos causados pelo uso incorreto do aplicativo.\n\n'
                            'Em caso de dúvidas, entre em contato: contato@teatroapp.com',
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: accepted,
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                    onChanged: (value) {
                      setState(() {
                        accepted = value ?? false;
                      });
                    },
                  ),
                  const Text(
                    "Li e concordo com os termos e condições",
                    softWrap: true,
                    style: TextStyle(
                      fontFamily: 'RobotoMono',
                      color: Colors.white,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              ElevatedButton(
                onPressed: accepted ? widget.onNext : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "Continuar",
                  softWrap: true,
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
