import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/main.dart';

class CustomProductCardNew extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;

  const CustomProductCardNew({
    required this.title,
    required this.subtitle,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 60.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(5)),
                        gradient: LinearGradient(
                          colors: [Colors.red, Colors.transparent],
                          stops: [0.5, 0.5],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6, left: 5),
                        child: Text(
                          'New',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(color: Colors.white, fontSize: 14.sp),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              subtitle,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle, color: Color(0xffff7622)),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(AppRoutesPage.detailsProduct);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
