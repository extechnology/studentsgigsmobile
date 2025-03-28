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
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // Border radius here
          ),
          elevation: 4, // Shadow depth
          color: Colors.white,
          child: ListTile(
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
            trailing: Icon(iconTrailing,color: iconColoTrailing,),
            onTap: onTap,
          ),
        ));
  }
}
