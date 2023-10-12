import 'package:customer_grocery/core/theme/pallete.dart';
import 'package:customer_grocery/view/blocs/cart/cart_bloc.dart';
import 'package:customer_grocery/view/screens/components/cart/cart_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async =>
            context.read<CartBloc>()..add(const CartEvent.refresh()),
        child: BlocBuilder<CartBloc, CartState>(
          // listener: (context, state) => state.maybeWhen(
          //   orElse: () {
          //     return null;
          //   },
          //   itemAdded: () {
          //     return context.read<CartBloc>().add(const CartEvent.refresh());
          //   },
          // ),
          builder: (context, state) => state.maybeWhen(
            orElse: () {
              return const SizedBox();
            },
            initial: () => const Center(
                child: CircularProgressIndicator(
              color: groceryPrimary,
            )),
            loadingState: () => const Center(
                child: CircularProgressIndicator(
              color: groceryPrimary,
            )),
            dataLoadedState: (cart) => Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.items!.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Dismissible(
                        key: Key(cart.items![index].id.toString()),
                        direction: DismissDirection.endToStart,
                        // onDismissed: (direction) {
                        //   // setState(() {
                        //   //   cart.removeAt(index);
                        //   // });
                        // },
                        background: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: CartCard(item: cart.items![index], counter: 3),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            dataFailedState: (message) => Center(
              child: Text(
                message,
                style: const TextStyle(
                  color: black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
