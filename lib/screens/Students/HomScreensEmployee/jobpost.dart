import 'package:flutter/material.dart';
import 'package:gigs/SubClasses/textfield.dart';
import 'package:html_editor_enhanced/html_editor.dart';

class JobPost extends StatelessWidget {
  JobPost({super.key});

  final HtmlEditorController controller = HtmlEditorController();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffE3E3E3),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2))],
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, size: 26),
          ),
        ),
        title: Text("Job Post Application"),
      ),
      body: Scrollbar(
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle("Preferred Work Mode"),
              _buildWorkModeSelection(),
              _buildSectionTitle("Job Title"),
              TextFieldCommon(
                hintText: "Development",
                iconTrailing: Icons.arrow_drop_down_sharp,
              ),
              SizedBox(height: 15),
              _buildSectionTitle("Job Location"),
              TextFieldCommon(
                hintText: "Enter location",
                iconTrailing: Icons.arrow_drop_down_sharp,
              ),
              SizedBox(height: 15),
              _buildSectionTitle("Job Description"),
              SizedBox(height: 10),
              _buildHtmlEditor(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Title Widget
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 13),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color(0xff3F414E),
        ),
      ),
    );
  }

  /// Work Mode Selection Widget
  Widget _buildWorkModeSelection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: ["Online", "Offline", "Both"].map((mode) {
        return ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            fixedSize: Size(96, 41),
            backgroundColor: mode == "Offline" ? Color(0xffEB8125) : Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Text(
            mode,
            style: TextStyle(
              fontFamily: "Poppins",
              color: mode == "Offline" ? Colors.white : Color(0xff242424),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        );
      }).toList(),
    );
  }

  /// HTML Editor for Job Description
  Widget _buildHtmlEditor() {
    return Container(
      height: 300, // Set a specific height to avoid layout overflow
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(8),
      ),
      child: HtmlEditor(
        controller: controller,
        htmlEditorOptions: HtmlEditorOptions(
          hint: 'Write job description here...',
          shouldEnsureVisible: true,
        ),
        htmlToolbarOptions: HtmlToolbarOptions(
          toolbarPosition: ToolbarPosition.aboveEditor,
          toolbarType: ToolbarType.nativeScrollable,
        ),
      ),
    );
  }
}
