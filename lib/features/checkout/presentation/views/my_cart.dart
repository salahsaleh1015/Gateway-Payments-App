import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../../../../core/widgets/cutom_app_bar.dart';
import '../widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'),
      body: const MyCartViewBody(),
    );
  }
}


// PaymentSheetObject create payment Intent(amount,currency)

// initialize Payment Sheet (PaymentIntentClientSecret)

// presentPaymentSheet


// Future<void> initPaymentSheet() async {
//   try {
//
//     // 3. Initialize the payment sheet
//     await Stripe.instance.initPaymentSheet(
//       paymentSheetParameters: SetupPaymentSheetParameters(
//         // Main params
//         paymentIntentClientSecret: data['paymentIntent'],
//         merchantDisplayName: 'Flutter Stripe Store Demo',
//
//       ) );
//   } catch (e) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Error: $e')),
//     );
//     rethrow;
//   }
// }
