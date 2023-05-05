import 'package:flutter/material.dart';

class HomeBottomButton extends StatelessWidget {
  const HomeBottomButton({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 6,
        foregroundColor: Colors.blue.shade800,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: Size(
          double.infinity,
          MediaQuery.of(context).size.height / 5,
        ),
      ),
      child: Column(
        children: [
          Icon(
            Icons.assignment,
            size: 32,
            color: Colors.blue.shade900,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
