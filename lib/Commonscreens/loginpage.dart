import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gigs/CommonFunctions/Other/forgot_password.dart';
import 'package:gigs/CommonFunctions/Registration_and_Login/login.dart';
import 'package:gigs/SubClasses/CustomTextField.dart';
import 'package:gigs/bloc/google_signup_bloc/blocevent.dart';
import 'package:gigs/bloc/google_signup_bloc/bloclogic.dart';
import 'package:gigs/bloc/google_signup_bloc/googleauthrepository.dart';
import 'package:gigs/bloc/google_signup_bloc/statebloc.dart';

class LoginPage extends StatelessWidget {
  final String userType;

  LoginPage({super.key, required this.userType});

  final TextEditingController userName = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController forgotPassword = TextEditingController();

  void _handleLogin(BuildContext context) async {
    await loginUser(
      userName,
      password,
      context,
      userType, // Pass the user type here
    );
    userName.clear();
    password.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 7, top: 10),
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffE3E3E3),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 26,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        backgroundColor: Color(0xffF9F2ED),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Image.asset(
            "assets/images/logos/image 1.png",
            // height: 69,
            // width: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 34, right: 34),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 42,
                  top: 87,
                ),
                child: Text(
                  "Welcome Back !",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xff3F414E),
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                  ),
                ),
              ),
              BlocProvider(
                create: (context) => GoogleAuthBloc(GoogleAuthRepository()),
                child: BlocListener<GoogleAuthBloc, GoogleAuthState>(
                  listener: (context, state) {
                    if (state is GoogleAuthSuccess) {
                      Navigator.pushReplacementNamed(context, "OnboardProfile");
                    } else if (state is GoogleAuthFailure) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(state.error)),
                      );
                    }
                  },
                  child: GestureDetector(
                    onTap: () {
                      context
                          .read<GoogleAuthBloc>()
                          .add(GoogleSignInRequested(context));
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xffF9F2ED),
                      backgroundImage: AssetImage(
                        "assets/images/logos/Group 6807.png",
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  "OR LOG IN WITH EMAIL",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA1A4B2)),
                ),
              ),
              CustomTextField(
                hintText: "User Name",
                controller: userName,
              ),
              SizedBox(
                height: 17,
              ),
              CustomTextField(
                hintText: "password",
                controller: password,
                isObscured: true,
              ),
              SizedBox(
                height: 17,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 39, bottom: 13),
                child: ElevatedButton(
                  onPressed: () {
                    _handleLogin(context);
                  },
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff004673),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    fixedSize: Size(MediaQuery.of(context).size.width, 56),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Forgot Password"),
                        content: TextFormField(
                          controller: forgotPassword,
                          decoration:
                              InputDecoration(labelText: "Enter your E-mail"),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () async {
                              String email = forgotPassword.text.trim();

                              if (email.isNotEmpty) {
                                await resetPassword(email, context);
                                forgotPassword.clear();

                                // Optional: show success snackbar and close dialog
                              } else {
                                // Handle empty input
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content:
                                          Text("Please enter your email.")),
                                );
                              }
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Color(0xff3F414E),
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Not yet registered? ",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            "RegisterPage",
                            arguments: userType,
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Color(0xffEB8125),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
