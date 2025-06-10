import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CustomListTile(),
  ));
}

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      this.title,
      this.iconTrailing,
      this.iconLeading,
      this.onTap,
      this.iconColorLeading,
      this.iconColoTrailing});

  final String? title;
  final IconData? iconTrailing;
  final IconData? iconLeading;
  final GestureTapCallback? onTap;
  final Color? iconColorLeading;
  final Color? iconColoTrailing;

  @override
  Widget build(BuildContext context) {
    return Card(
      //margin: EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Border radius here
      ),
      //elevation: 2, // Shadow depth
      color: Colors.white,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        leading: Icon(iconLeading, color: iconColorLeading),
        title: Text(
          title!,
          style: TextStyle(
            fontFamily: "Poppins",
            color: Color(0xff32343E),
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        trailing: Icon(
          size: 16,
          iconTrailing,
          color: iconColoTrailing,
        ),
        onTap: onTap,
      ),
    );
  }
}
