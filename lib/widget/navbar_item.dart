import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarItem extends StatefulWidget {
  final String text;
  final String routeName;
  final bool isSelected;
  final VoidCallback onSelected;

  const NavbarItem({
    super.key,
    required this.text,
    required this.routeName,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  _NavbarItemState createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          widget.onSelected();
          Navigator.pushNamed(context, widget.routeName);
        },
        child: Text(
          widget.text,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: widget.isSelected
                ? Colors.black45
                : (_isHovered ? Colors.black45 : Colors.black),
          ),
        ),
      ),
    );
  }
}
