import 'package:flutter/material.dart';

import '../../../report/presentation/widgets/report_action_buttons.dart';
import '../../../report/presentation/widgets/report_header.dart';
import '../../../report/presentation/widgets/report_insight_card.dart';
import '../../../report/presentation/widgets/report_paylater_card.dart';
import '../../../report/presentation/widgets/report_quick_stats.dart';
import '../../../report/presentation/widgets/report_transaction_list.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              ReportHeader(),
              SizedBox(height: 16),
              ReportPayLaterCard(),
              SizedBox(height: 16),
              ReportQuickStats(),
              SizedBox(height: 20),
              ReportActionButtons(),
              SizedBox(height: 20),
              ReportInsightCard(),
              SizedBox(height: 24),
              ReportTransactionList(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
