import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuRow extends StatefulWidget {
  final String text;
  final String svgPath;
  final bool isSelected;
  final VoidCallback onTap;

  const MenuRow({
    super.key,
    required this.text,
    required this.svgPath,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<MenuRow> createState() => _MenuRowState();
}

class _MenuRowState extends State<MenuRow> {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: widget.onTap,
        child: SizedBox(
          child: Row(
            children: [
              const SizedBox(
                width: 36,
              ),
              SvgPicture.asset(
                widget.svgPath,
              ),
              const SizedBox(
                width: 18,
              ),
              Text(
                widget.text,
              ),
              Expanded(child: Container()),
              const SizedBox(
                width: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}