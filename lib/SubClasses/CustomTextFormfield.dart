import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String? hintText;
  final IconData? icon;
  final bool isPassword;
  final List<String>? dropdownItems; // Dropdown options
  final IconData? trailingIcon; // Custom trailing icon
  final VoidCallback?
      onTrailingIconPressed; // Callback for trailing icon action

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.icon,
    this.isPassword = false,
    this.dropdownItems,
    this.trailingIcon, // Custom icon for profile screen
    this.onTrailingIconPressed, // Action when trailing icon is tapped
  });

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isObscured = true;
  String? selectedValue; // Stores the selected dropdown item

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword ? _isObscured : false,
      decoration: InputDecoration(
        hintStyle: TextStyle(fontFamily: "Poppins",color: Color(0xff3F414E)),
        hintText: widget.hintText ?? "",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Colors.white70),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Colors.white70),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Colors.blue, width: 2),
        ),
        filled: true,
        fillColor: Colors.white,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon:
                    Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
                color: Color(0xff3F414E),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              )
            : widget.dropdownItems != null
                ? DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                      value: selectedValue,
                      items: widget.dropdownItems!.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue;
                        });
                      },
                    ),
                  )
                : widget.trailingIcon != null
                    ? IconButton(
                        icon: Icon(widget.trailingIcon),
                        onPressed: widget.onTrailingIconPressed ?? () {},
                      )
                    : (widget.icon != null ? Icon(widget.icon) : null),
      ),
    );
  }
}

class TextFieldCommon extends StatelessWidget {
  TextFieldCommon({
    super.key,
    this.hintText,
    this.iconLead,
    this.iconTrailing,
    this.colorText,
    this.colorLead,
    this.colorTrailing, this.controller, this.onTap,
  });

  final String? hintText;
  final IconData? iconLead;
  final IconData? iconTrailing;
  final Color? colorText;
  final Color? colorLead;
  final Color? colorTrailing;
  final TextEditingController? controller; // Controller for text field
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: TextField(
        controller: controller,
        onTap: onTap,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText!,
          prefixIcon: Icon(
            iconLead,
            color: colorLead,
          ),
          // Leading icon
          suffixIcon: Icon(iconTrailing,color: colorTrailing,),
          // Trailing icon
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.white70),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.white70),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.blue, width: 2),
          ),
          hintStyle: TextStyle(fontFamily: "Poppins",color: Color(0xff3F414E)),
        ),
      ),
    );
  }
}
