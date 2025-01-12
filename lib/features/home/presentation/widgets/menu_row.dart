import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vikrf_thesis/core/utils/app_colors.dart';
import 'package:vikrf_thesis/core/utils/app_dimens.dart';

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
  bool get _showSelectedState => widget.isSelected;

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onHover: (bool hovered) {
          setState(() {
            isHovered = hovered;
          });
        },
        onTap: widget.onTap,
        child: SizedBox(
          height: AppDimens.menuRowHeight,
          child: Row(
            children: [
              const SizedBox(
                width: 36,
              ),
              SvgPicture.asset(
                widget.svgPath,
                width: AppDimens.menuIconSize,
                height: AppDimens.menuIconSize,
              ),
              const SizedBox(
                width: 18,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  color: _showSelectedState ? AppColors.primary : Colors.white,
                  fontSize: AppDimens.menuTextSize,
                ),
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