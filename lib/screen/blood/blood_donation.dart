import 'package:flutter/material.dart';
import 'package:social/custom_widgets/custom_container.dart';
import 'package:social/custom_widgets/custom_text_field.dart';
class BloodDonation extends StatefulWidget {
  const BloodDonation({Key? key}) : super(key: key);

  @override
  _BloodDonationState createState() => _BloodDonationState();
}
TextEditingController _donorNameController= TextEditingController();
TextEditingController _donorAddressController= TextEditingController();
class _BloodDonationState extends State<BloodDonation> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Add Donor"),
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: screenWidth*0.03, right:  screenWidth*0.03),
            child: SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: screenHeight*0.05),
                  Padding(padding:  EdgeInsets.only(left: screenWidth*0.02,top: screenWidth*0.02, bottom: screenWidth*0.01),
                      child: Text("Donor Name", style: TextStyle(fontSize: screenWidth*0.04,
                          fontWeight: FontWeight.bold,color: Colors.blueGrey))),
                  CustomTextField(
                      prefixIcon: Icons.drive_file_rename_outline,
                      controller: _donorNameController,
                      hintText: "",
                      obsecureValue: false),
                  Padding(padding:  EdgeInsets.only(left: screenWidth*0.02,top: screenWidth*0.05, bottom: screenWidth*0.01),
                      child: Text("Donor Address", style: TextStyle(fontSize: screenWidth*0.04,
                          fontWeight: FontWeight.bold,color: Colors.blueGrey))),
                  CustomTextField(
                      prefixIcon: Icons.location_on,
                      controller: _donorAddressController,
                      hintText: "",
                      obsecureValue: true),
                  SizedBox(height: screenHeight*0.04),
                  InkWell(onTap: (){},
                    child: CustomContainer(
                        text: "Submit"),
                  )
                ],
              ),
            ),
          ),
        )
    ));
  }
}
