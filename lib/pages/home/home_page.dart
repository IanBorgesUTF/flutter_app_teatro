import 'package:flutter/material.dart';
import 'package:flutter_app_teatro/config/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fundo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/title_logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.rulesPage);
                },
                style: OutlinedButton.styleFrom(
                  fixedSize: const Size(200, 80),
                  side: const BorderSide(color: Colors.white, width: 4),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                ),
                child: const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    '//Iniciar',
                    style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
