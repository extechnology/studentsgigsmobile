import 'package:flutter/material.dart';
import 'package:gigs/SubClasses/textfield.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100,
        flexibleSpace: Center(
          child: Text(
            "Update Profile",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Color(0xff3F414E)),
          ),
        ),
        backgroundColor: Color(0xffF9F2ED),
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(31),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 65,
                  backgroundColor: Color(0xff004673),
                  child: Stack(
                    children: [
                      Center(child: Image.asset("assets/images/others/Group 69.png")),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 41,
                          width: 41,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffEB8125),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.mode_edit_outline_outlined),
                            color: Colors.white,
                            iconSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26, bottom: 13),
                child: Text(
                  "Name",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xff3F414E)),
                ),
              ),
              Container(
                height: 54,
                child: TextFieldCommon(
                  hintText: "",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26, bottom: 13),
                child: Text(
                  "Contact Email",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xff3F414E)),
                ),
              ),
              Container(
                height: 54,
                child: TextFieldCommon(
                  hintText: "",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26, bottom: 13),
                child: Text(
                  "Portfolio/LinkedIn Profile",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xff3F414E)),
                ),
              ),
              Container(
                height: 54,
                child: TextFieldCommon(
                  hintText: "",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26, bottom: 13),
                child: Text(
                  "Country",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xff3F414E)),
                ),
              ),
              Container(
                height: 54,
                child: TextFieldCommon(
                  hintText: "",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26, bottom: 13),
                child: Text(
                  "Contact Number",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xff3F414E)),
                ),
              ),
              Container(
                height: 54,
                child: TextFieldCommon(
                  hintText: "",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26, bottom: 13),
                child: Text(
                  "About You",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xff3F414E)),
                ),
              ),
              Container(
                height: 54,
                child: TextFieldCommon(
                  hintText: "",
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 107,
        height: 56,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "DashBoard");
          },
          child: Text(
            "Save",
            style: TextStyle(color: Colors.white,fontSize: 16),
          ),
          backgroundColor: Color(0xff004673),
        ),
      ),
    );
  }
}
