import 'package:customer_grocery/core/theme/pallete.dart';
import 'package:customer_grocery/view/blocs/cart/cart_bloc.dart';
import 'package:customer_grocery/view/blocs/home/home_bloc.dart';
import 'package:customer_grocery/view/blocs/layout/layout_bloc.dart';
import 'package:customer_grocery/view/screens/pages/cart_screen.dart';
import 'package:customer_grocery/view/screens/pages/favorite_screen.dart';
import 'package:customer_grocery/view/screens/pages/home/home_screen.dart';
import 'package:customer_grocery/view/screens/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomeScreen(),
      const FavoriteScreen(),
      const CartScreen(),
      const ProfileScreen()
    ];
    List<String> titleAppbar = [
      'Market',
      'Favorite',
      'Cart',
      'Profile',
    ];
    return BlocConsumer<LayoutBloc, LayoutState>(
      listener: (context, state) {},
      builder: (context, state) {
        final selectedIndex = state.maybeMap(
            orElse: () => 0,
            initial: (value) => 0,
            updateIndex: (value) => value.index);

        switch (selectedIndex) {
          case 0:
            context.read<HomeBloc>().add(HomeEvent.loadProducts());
          case 2:
            context.read<CartBloc>().add(const CartEvent.fetching());
        }

        return Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: TOTAppBarMolecule(
                backgroundColor: groceryPrimary,
                title: TOTTextAtom.headLineSmall(titleAppbar[selectedIndex],
                    color: white),
                automaticallyImplyLeading: false,
                actionWidgets: selectedIndex == 0
                    ? [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TOTIconAtom.displayMedium(
                            codePoint: 0xe567,
                            color: white,
                          ),
                        ),
                      ]
                    : [],
              )),
          body: screens[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                context.read<LayoutBloc>().add(LayoutEvent.updateIndex(index));
              },
              items: const [
                BottomNavigationBarItem(
                    icon: TOTIconAtom.displayLarge(codePoint: 0xf107),
                    activeIcon: TOTIconAtom.displayLarge(
                      codePoint: 0xf107,
                      color: groceryPrimary,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: TOTIconAtom.displayLarge(codePoint: 0xf04a),
                    activeIcon: TOTIconAtom.displayLarge(
                      codePoint: 0xf04a,
                      color: groceryPrimary,
                    ),
                    label: 'Favorite'),
                BottomNavigationBarItem(
                    icon: TOTIconAtom.displayLarge(codePoint: 0xf37f),
                    activeIcon: TOTIconAtom.displayLarge(
                      codePoint: 0xf37f,
                      color: groceryPrimary,
                    ),
                    label: 'Cart'),
                BottomNavigationBarItem(
                  icon: TOTIconAtom.displayLarge(codePoint: 0xf08ae),
                  activeIcon: TOTIconAtom.displayLarge(
                    codePoint: 0xf08ae,
                    color: groceryPrimary,
                  ),
                  label: 'Profile',
                ),
              ]),
        );
      },
    );
  }
}
