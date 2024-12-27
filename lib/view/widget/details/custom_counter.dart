import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/bloc/counter/counter_cubit.dart';
import 'custom_counter_button.dart';

class CustomCounter extends StatelessWidget {
  const CustomCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocBuilder<CounterCubit, int>(
        builder: (context, count) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomCounterButton(
                icon: Icons.remove,
                onTap: () {
                  BlocProvider.of<CounterCubit>(context).decrement();
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Text(
                    count.toString(),
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange.shade700,
                    ),
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
          );
        },
      ),
    );
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: [
    //     CustomCounterButton(
    //       icon: Icons.remove,
    //       onTap: () {},
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 16.0),
    //       child: Text("$counter",
    //           style: TextStyle(fontSize: 16.sp, color: Colors.white)),
    //     ),
    //     CustomCounterButton(
    //       icon: Icons.add,
    //       onTap: () {},
    //     ),
    //   ],
    // );
  }
}
