import 'package:flutter/material.dart';
import 'package:gigs/CommonFunctions/Registration_and_Login/googlesignup.dart';
import 'package:gigs/CommonFunctions/Registration_and_Login/register.dart';
import 'package:gigs/SubClasses/CustomTextField.dart';

class RegisterPage extends StatefulWidget {
  final String userType;
  RegisterPage({super.key, required this.userType});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isLoading = false;
  bool isChecked = false;
  final TextEditingController userName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String userType = ModalRoute.of(context)!.settings.arguments as String;
    final size = MediaQuery.of(context).size;
    final double padding = size.width * 0.08;

    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      appBar: AppBar(
        leading: Padding(
          padding:
              EdgeInsets.only(left: size.width * 0.02, top: size.height * 0.02),
          child: CircleAvatar(
            backgroundColor: Color(0xffE3E3E3),
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back, size: size.width * 0.06),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: size.height * 0.12,
        backgroundColor: Color(0xffF9F2ED),
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: size.height * 0.08),
          child: Image.asset("assets/images/logos/image 1.png",
              fit: BoxFit.contain),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.04),
              Text(
                "Create your account",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Color(0xff3F414E),
                  fontWeight: FontWeight.w600,
                  fontSize: size.width * 0.07,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              GestureDetector(
                onTap: () {
                  signInWithGoogle(context);
                },
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: size.width * 0.08,
                  backgroundImage:
                      AssetImage("assets/images/logos/Group 6807.png"),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                "OR LOG IN WITH EMAIL",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffA1A4B2),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              CustomTextField(
                hintText: "User Name",
                controller: userName,
              ),
              SizedBox(height: size.height * 0.02),
              CustomTextField(
                hintText: "E-Mail",
                controller: email,
              ),
              SizedBox(height: size.height * 0.02),
              CustomTextField(
                hintText: "password",
                controller: password,
                isObscured: true,
              ),
              SizedBox(height: size.height * 0.02),
              CustomTextField(
                hintText: "password",
                controller: confirmPassword,
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            fontSize: size.width * 0.04, color: Colors.black),
                        children: [
                          TextSpan(
                            text: "I have read the ",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w300),
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? newValue) =>
                        setState(() => isChecked = newValue!),
                    side: BorderSide(color: Color(0xffEB8125), width: 2),
                    activeColor: Color(0xffEB8125),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.03),
              ElevatedButton(
                onPressed: () {
                  if (isChecked) {
                    registerUser(
                      email,
                      userName,
                      password,
                      confirmPassword,
                      context,
                      widget.userType,
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Please accept the Privacy Policy"),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                child: Text(
                  "REGISTER",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontSize: size.width * 0.045,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff004673),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  fixedSize: Size(size.width * 0.8, size.height * 0.07),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                        fontFamily: "Poppins", fontSize: size.width * 0.045),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, "LoginPage"),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xffEB8125),
                        fontSize: size.width * 0.045,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.06),
            ],
          ),
        ),
      ),
    );
  }
}
