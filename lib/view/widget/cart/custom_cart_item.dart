import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/bloc/counter/counter_cubit.dart';
import 'package:order_ready/core/constant/image_asset.dart';

import '../details/custom_counter.dart';
import '../details/custom_counter_button.dart';

class CustomCartItem extends StatelessWidget {
  final String title;
  final double price;
  final int quantity;
  final int counter;

  const CustomCartItem({
    super.key,
    required this.title,
    required this.price,
    required this.quantity,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocBuilder<CounterCubit, int>(
        builder: (context, count) {
          return Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                // Image
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      AppImageAsset.logoRestaurant,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                // Text Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delicious Meal",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "\$15.99",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.orange.shade700,
                        ),
                      ),
                    ],
                  ),
                ),
                // Counter
                Row(
                  children: [
                    CustomCounterButton(
                      icon: Icons.remove,
                      onTap: () {
                        BlocProvider.of<CounterCubit>(context).decrement();
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        count.toString(),
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange.shade700,
                        ),
                      ),
                    ),
                    CustomCounterButton(
                      icon: Icons.add,
                      onTap: () {
                        BlocProvider.of<CounterCubit>(context).increment();
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
    // return Container(
    //   margin: const EdgeInsets.only(bottom: 20),
    //   padding: const EdgeInsets.all(10),
    //   decoration: BoxDecoration(
    //     color: Colors.orange,
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   child: Row(
    //     children: [
    //       Container(
    //         width: 50.w,
    //         height: 50.h,
    //         child: ClipRRect(
    //           borderRadius: BorderRadius.circular(16),
    //           child: Image.asset(
    //             AppImageAsset.logoRestaurant,
    //             fit: BoxFit.cover,
    //           ),
    //         ),
    //       ),
    //       SizedBox(width: 10.w),
    //       Expanded(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               title,
    //               style: TextStyle(color: Colors.white, fontSize: 16.sp),
    //             ),
    //             SizedBox(height: 5.h),
    //             Text(
    //               "\$$price",
    //               style: TextStyle(color: Colors.orange, fontSize: 16.sp),
    //             ),
    //           ],
    //         ),
    //       ),
    //       CustomCounter(
    //         counter: counter,
    //       ),
    //     ],
    //   ),
    // );
  }
}
