import 'package:flutter/material.dart';
import 'package:gateway_payments_app/features/checkout/presentation/widgets/custom_credit_card.dart';
import 'package:gateway_payments_app/features/checkout/presentation/widgets/payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: PaymentMethodsListView(updatePaymentMethod: ({required int index}) {}),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            autovalidateMode: autovalidateMode,
            formKey: formKey,
          ),
        ),
      ],
    );
  }
}
