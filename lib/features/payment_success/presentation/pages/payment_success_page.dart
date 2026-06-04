import 'package:flutter/material.dart';

import '../widgets/payment_success_header.dart';
import '../widgets/payment_success_detail_card.dart';
import '../widgets/payment_success_items_card.dart';
import '../widgets/payment_success_delivery_card.dart';
import '../widgets/payment_success_actions.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      body: SafeArea(
        child: ListView(
          children: const [
            // ── Success hero ───────────────────────────────────────────
            PaymentSuccessHeader(),

            // ── Transaction details ────────────────────────────────────
            PaymentSuccessDetailCard(),
            SizedBox(height: 20),

            // ── Order items ────────────────────────────────────────────
            PaymentSuccessItemsCard(),
            SizedBox(height: 14),

            // ── Delivery estimate ──────────────────────────────────────
            PaymentSuccessDeliveryCard(),
            SizedBox(height: 24),

            // ── Action buttons ─────────────────────────────────────────
            PaymentSuccessActions(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
