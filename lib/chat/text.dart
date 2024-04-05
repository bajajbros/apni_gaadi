import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

bool isNotCardScreen = true;

class CustomText extends StatefulWidget {
  final String? text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final TextAlign? align;

  const CustomText(
      {Key? key,
      this.text,
      this.size,
      this.color = kIsWeb ? Colors.black : Colors.black,
      this.weight,
      this.align})
      : super(key: key);

  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final getSize = widget.size ?? 14;
    final size = isNotCardScreen
        ? kIsWeb
            ? getSize + 8
            : widget.size
        : widget.size;
    return FadeTransition(
      opacity: _animation,
      child: Text(
        widget.text!,
        textAlign: widget.align ?? TextAlign.start,
        style: GoogleFonts.manrope(
          textStyle: TextStyle(
            fontSize: size,
            color: widget.color,
            fontWeight: widget.weight ?? FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
