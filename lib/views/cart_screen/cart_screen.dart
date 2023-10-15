import 'package:ecitymart_app/const/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,
    child: "Cart is Empty!".text.fontFamily(semibold).color(darkFontGrey).makeCentered()
    );
  }
}