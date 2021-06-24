import 'package:devop_jobs/core/app_gradients.dart';
import 'package:devop_jobs/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppBarCandWidget extends PreferredSize {
  final String nomeIdade = "";
  final String cidade = "";
  final String imagem = "";

  AppBarCandWidget(nomeIdade, cidade, imagem)
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            child: Stack(
              children: [
                Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 161,
                  decoration: BoxDecoration(
                    gradient: AppGradients.linear,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Column(
                          children: [
                            Text(
                              nomeIdade,
                              style: AppTextStyles.titleBold,
                            ),
                            Text(
                              cidade,
                              style: AppTextStyles.titleBold,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Container(
                            width: 58,
                            height: 58,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    imagem,
                                  ),
                                )),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
}
