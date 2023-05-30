import 'package:flutter/material.dart';
import 'dart:async';

class DelayedAnimationBottom extends StatefulWidget {
  final Widget child;
  final int delay;
   const DelayedAnimationBottom({super.key, required this.child, required this.delay});

  @override
  State<DelayedAnimationBottom> createState() => _DelayedAnimationBottomState();
}

class _DelayedAnimationBottomState extends State<DelayedAnimationBottom>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  // controller l animation
  late Animation<Offset> _animOffset;
  // preciser le comportement de l animation
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 800,
      ),
    );
    final curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );

    _animOffset = Tween<Offset>(
      begin: const Offset(-0.35, 10.0),
      end: Offset.zero,
    ).animate(curve);

    Timer(Duration(milliseconds: widget.delay), () {
      _controller.forward();
    });
  }

  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
    );
  }
}
