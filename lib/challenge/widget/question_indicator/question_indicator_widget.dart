import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/widget/progress_indicator/progress_indicator.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentePage;
  final int length;
  QuestionIndicatorWidget(
      {Key? key, required this.currentePage, required this.length})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Questão ${currentePage}", style: AppTextStyles.body),
              Text("de ${length}", style: AppTextStyles.body),
              //ProgressIndicator(value: 0.4)
            ],
          ),
          SizedBox(height: 16),
          ProgressIndicatorWidget(value: currentePage / length)
        ],
      ),
    );
  }
}
