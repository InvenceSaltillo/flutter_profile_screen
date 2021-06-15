import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({Key? key, required this.text, this.primary})
      : super(key: key);

  final String text;
  final Color? primary;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: () {},
      child: Text('$text'),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        side: primary != null
            ? BorderSide.none
            : BorderSide(
                width: 1,
                color: Colors.grey,
              ),
        fixedSize: Size(size.width * 0.4, size.height * .065),
        padding: const EdgeInsets.all(10),
        primary: primary != null ? primary : Colors.white,
        onPrimary: primary != null ? Colors.white : Colors.grey[500],
        textStyle: GoogleFonts.josefinSans(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
