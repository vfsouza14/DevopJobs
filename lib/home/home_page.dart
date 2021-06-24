import '../formulario/front_page.dart';
import 'package:devop_jobs/core/app_text_styles.dart';
import 'package:devop_jobs/home/widgets/card/card_widget.dart';
import 'package:flutter/material.dart';
import '../home/widgets/appbard/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80),
                    child: Text(
                      "Toque para visualizar!",
                      style: AppTextStyles.heading,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: ListView(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => ChallengePage(
                                  imagem:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpLlVQEy8KvfGKe_AfkzzuDAiBQ5C0eUGjKa8tmvLoSDSD_bJho3rX3eoLKMYXem6ho18&usqp=CAU",
                                  nomeIdade: "João, 23 anos",
                                  cidade: "Belo Horizonte")));
                        },
                        child: QuizCardWidget(
                          nomeIdade: "João, 23 anos",
                          cidade: "Belo Horizonte",
                          vaga: "Cadidato a vaga de Desenvolvedor Full Stack",
                        )),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => ChallengePage(
                                  imagem:
                                      "https://secure.gravatar.com/avatar/5adf84a60b4a347cb89b3734d7ed25bc?s=200&d=blank&r=g",
                                  nomeIdade: "Ana, 40 anos",
                                  cidade: "Contagem")));
                        },
                        child: QuizCardWidget(
                          nomeIdade: "Ana, 40 anos",
                          cidade: "Contagem",
                          vaga: "Candidato a vaga de Infraestrutura",
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
