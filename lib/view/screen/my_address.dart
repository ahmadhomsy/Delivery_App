import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/view/widget/address/custom_address_cart.dart';
import 'package:order_ready/view/widget/custom_button.dart';
import '../widget/custom_appbar.dart';

class MyAddress extends StatelessWidget {
  const MyAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              const CustomAppbar(
                appBarAddress: "My Address",
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        CustomAddressCart(
                          iconData: Icons.home,
                          iconColor: Colors.blue,
                          address: "HOME",
                          location: "2464 Royal Ln. Mesa, New Jersey 45463",
                          onEdit: () {},
                          onDelete: () {},
                        ),
                        SizedBox(
                          height: 12,
                        )
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  nameButton: "ADD NEW ADDRESS",
                  onPress: () {
                    Navigator.of(context).pushNamed(AppRoutesPage.newAddress);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
