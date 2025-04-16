library;

import 'package:flutter/material.dart';

class CustomLoader extends StatelessWidget {
  final double size;
  final Color color;
  final Duration duration;

  const CustomLoader({
    super.key,
    this.size = 50,
    this.color = Colors.blue,
    this.duration = const Duration(milliseconds: 1000),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Center(child: _buildRotatingLoader()),
    );
  }

  Widget _buildRotatingLoader() {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: duration,
      builder: (context, value, child) {
        return Transform.rotate(
          angle: value * 6.28, // Full circle
          child: _buildLoaderContainer(),
        );
      },
    );
  }

  Widget _buildLoaderContainer() {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: color, width: 4.0),
      ),
      child: _buildProgressIndicator(),
    );
  }

  Widget _buildProgressIndicator() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircularProgressIndicator(
        strokeWidth: 3.0,
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }
}
