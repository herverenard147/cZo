import 'package:flutter/material.dart';
import 'dart:async';

class DelayedAnimationHop extends StatefulWidget {
  final Widget child;
  final int delay;
  const DelayedAnimationHop({required this.child, required this.delay});

  @override
  State<DelayedAnimationHop> createState() => _DelayedAnimationHopState();
}

class _DelayedAnimationHopState extends State<DelayedAnimationHop>
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
      begin: const Offset(0.0, -0.35),
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
