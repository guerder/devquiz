import 'package:flutter/material.dart';

import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String completed;
  final double percent;

  const QuizCardWidget({
    Key? key,
    required this.title,
    required this.completed,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(height: 16),
          Text(
            title,
            style: AppTextStyles.heading15,
          ),
          SizedBox(height: 16),
          Row(
            children: [
              FittedBox(
                child: Text(
                  completed,
                  style: AppTextStyles.body11,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: ProgressIndicatorWidget(value: percent),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
