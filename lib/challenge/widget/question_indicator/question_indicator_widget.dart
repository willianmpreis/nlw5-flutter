import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/widget/progress_indicator/progress_indicator.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  QuestionIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Questão 04", style: AppTextStyles.body),
              Text("de 10", style: AppTextStyles.body),
              //ProgressIndicator(value: 0.4)
            ],
          ),
          SizedBox(height: 16),
          ProgressIndicatorWidget(value: 0.4)
        ],
      ),
    );
  }
}
