import 'package:devop_jobs/core/app_gradients.dart';
import 'package:devop_jobs/core/app_text_styles.dart';
import 'package:devop_jobs/home/widgets/info_card/info_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
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
                      Text.rich(TextSpan(
                          text: "Olá, ",
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                              text: "Victor",
                              style: AppTextStyles.titleBold,
                            )
                          ])),
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://media-exp1.licdn.com/dms/image/C4E03AQEBq5lrDiVa5w/profile-displayphoto-shrink_200_200/0/1609615785971?e=1624492800&v=beta&t=7aNGUgt8PLvj89_-T89UVxr6ISLtDkDQ-z-plCKbLyk",
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 1.0),
                  child: ScoreCardWidget(),
                ),
              ],
            ),
          ),
        );
}
