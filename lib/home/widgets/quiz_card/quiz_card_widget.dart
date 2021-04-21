import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
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
            "Gerenciamento de Estado",
            style: AppTextStyles.heading15,
          ),
          SizedBox(height: 16),
          Row(
            children: [
              FittedBox(
                child: Text(
                  "3 de 10",
                  style: AppTextStyles.body11,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: ProgressIndicatorWidget(value: 0.3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
