import 'package:devop_jobs/formulario/widgets/dados_curriculo/Estilizacao_titulo.dart';
import 'package:devop_jobs/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  final int count;

  const QuizWidget({Key? key, required this.title, required this.count})
      : super(key: key);

  String corpoText() {
    String texto = "";
    if (this.count == 1) {
      texto =
          "TELEFONE:  (31)99746-5295 \nENDEREÇO: Rua do Carmelo, 488 \nESTADO: MG \nCEP: 31568-590 \nESTADO CIVIL: Solteiro \nE-MAIL: victorfernandes@hotmail.com \n\nFORMAÇÃO: \n\n SISTEMA PIAGET DE ENSINO: Ensino médio \n completo \n CURSO CIÊNCIA DA COMPUTAÇÃO -EMGE: \n 5ºPERÍODO EM CONCLUSÃO";
    }
    if (this.count == 2) {
      texto =
          "ANALISTA DE SUPORTE \nFácil Informática \n(24/10/2019 – 03/04/2021) \n Responsável por dar suporte aos clientes no \n funcionamento do sistema, desde dúvidas a erros; \n Testes de novos implementos; \n manutenções e consultas via banco de dados \n PL/SQL. \n\nESTAGIO DE DESENVOLVIMENTO \nAEC \n(03/05/2021 - até o momento atual) \n Resposável por dar manutenção no sistema; \n Desenvolvimento de novos projetos.";
    }
    if (this.count == 3) {
      texto =
          "SKILLS: \n\n PHP: Básico \n DART: Básico \n FLUTTER: Básico \n MySQL : Basico \n PLSQL: Básico \n\nIDIOMAS: \n\n FRANCÊS: Básico \n INGLÊS: Básico";
    }
    if (this.count == 4) {
      texto =
          "LINKEDIN: https://www.linkedin.com/in/victor-fernandes6524ab183/";
    }
    return texto;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          AwnserWidget(title: corpoText()),
        ],
      ),
    );
  }
}
