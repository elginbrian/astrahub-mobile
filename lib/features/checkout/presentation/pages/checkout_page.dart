import 'package:flutter/material.dart';

import '../widgets/checkout_app_bar.dart';
import '../widgets/checkout_address_card.dart';
import '../widgets/checkout_order_card.dart';
import '../widgets/checkout_payment_section.dart';
import '../widgets/checkout_summary_card.dart';
import '../widgets/checkout_bottom_bar.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      appBar: const CheckoutAppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        children: const [
          CheckoutAddressCard(),
          CheckoutOrderCard(),
          CheckoutPaymentSection(),
          CheckoutSummaryCard(),
          SizedBox(height: 8),
        ],
      ),
      bottomNavigationBar: const CheckoutBottomBar(),
    );
  }
}
