import 'package:flutter/cupertino.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCridetCard extends StatelessWidget {
  final AutovalidateMode autovalidateMode;
  final GlobalKey<FormState> formKey;
  const CustomCridetCard({
    super.key,
    required this.autovalidateMode,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    String cardNumber = '';
    String expiryDate = '';
    String cardHolderName = '';
    String cvvCode = '';
    bool showBackView = false;
    return Column(
      children: [
        CreditCardWidget(
          cardType: CardType.visa,
          obscureCardNumber: true,
          obscureInitialCardNumber: false,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (val) {},
        ),
        CreditCardForm(
          autovalidateMode: autovalidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          formKey: formKey,
          onCreditCardModelChange: (cardHolderModel) {
            cardNumber = cardHolderModel.cardNumber;
            expiryDate = cardHolderModel.expiryDate;
            cardHolderName = cardHolderModel.cardHolderName;
            cvvCode = cardHolderModel.cvvCode;
            showBackView = cardHolderModel.isCvvFocused;
          },
        )
      ],
    );
  }
}
