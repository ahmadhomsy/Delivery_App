import 'package:flutter/material.dart';

import 'custom_cheap_filter.dart';
import 'custom_rating_stars.dart';

class CustomFilterDialog extends StatelessWidget {
  const CustomFilterDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Close button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Filter your search',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Offers Section
              const Text(
                'OFFERS',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Wrap(
                spacing: 8,
                children: [
                  CustomCheapFilter(label: 'Delivery'),
                  CustomCheapFilter(label: 'Pick Up'),
                  CustomCheapFilter(label: 'Offer'),
                  CustomCheapFilter(label: 'Online payment available'),
                ],
              ),
              const SizedBox(height: 16),

              // Delivery Time Section
              const Text(
                'DELIVER TIME',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Wrap(
                spacing: 8,
                children: [
                  CustomCheapFilter(label: '10-15 min'),
                  CustomCheapFilter(label: '20 min'),
                  CustomCheapFilter(label: '30 min'),
                ],
              ),
              const SizedBox(height: 16),

              // Rating Section
              const Text(
                'RATING',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              CustomRatingStars(),
              const SizedBox(height: 16),

              // Filter Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    // Apply filter action
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'FILTER',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}