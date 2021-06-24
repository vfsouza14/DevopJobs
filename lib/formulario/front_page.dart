import 'package:devop_jobs/formulario/widgets/lista/Lista_dados.dart';
import 'package:devop_jobs/home/widgets/appbard/app_bar_cand_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  final String nomeIdade;
  final String cidade;
  final String imagem;
  const ChallengePage(
      {Key? key,
      required this.nomeIdade,
      required this.cidade,
      required this.imagem})
      : super(key: key);
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  // ignore: unused_field
  int _count = 1;

  void _mudaPagina() {
    setState(() {
      _count++;
    });
  }

  void _voltaPagina() {
    if (this._count == 1) {
      Navigator.of(context).pushNamed('/home');
    } else {
      setState(() {
        _count--;
      });
    }
  }

  String _mudaTitulo() {
    String texto = '';

    if (this._count == 1) {
      texto = "Dados pessoais/Formações";
    }
    if (this._count == 2) {
      texto = "Experiências";
    }
    if (this._count == 3) {
      texto = "Skills/Idiomas";
    }

    if (this._count == 4) {
      texto = "redes sociais";
    }

    return texto;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCandWidget(widget.nomeIdade, widget.cidade, widget.imagem),
      body: Column(
        children: [
          Container(
            child: QuizWidget(
              count: _count,
              title: _mudaTitulo(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 130),
            child: Row(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(), primary: Colors.blue),
                    child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Icon(Icons.arrow_left_outlined)),
                    onPressed: _voltaPagina),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), primary: Colors.blue),
                  child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Icon(Icons.arrow_right_outlined)),
                  onPressed: _count < 4 ? _mudaPagina : null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
