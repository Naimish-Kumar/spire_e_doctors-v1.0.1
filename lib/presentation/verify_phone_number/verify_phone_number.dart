import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/core/utils/app_colors.dart';
import 'package:spire_e_doctors/presentation/phone_varification_screen/phone_verification_screen.dart';

class VerifyPhoneNumber extends StatelessWidget {
  final PhoneController phoneController =
      PhoneController(PhoneNumber(isoCode: IsoCode.IN, nsn: ''));
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.backgroundColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.adaptSize),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                  spreadRadius: 1)
                            ]),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 20.adaptSize,
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Verify Phone Number',
                        style: TextStyle(
                            fontFamily: 'Barlow',
                            fontSize: 18.adaptSize,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.adaptSize),
                    child: Text(
                      'We have sent on you SMS with a code to number +91 1234567890',
                      style: TextStyle(
                          fontFamily: 'Barlow',
                          fontSize: 17.adaptSize,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurple.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                        spreadRadius: 5,
                      )
                    ]),
                    child: PhoneFormField(
                      style: TextStyle(
                        fontSize: 18.adaptSize,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w600,
                      ),
                      controller: phoneController,
                      decoration: InputDecoration(
                          prefixStyle: TextStyle(
                            fontSize: 18.adaptSize,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w600,
                          ),
                          hintText: 'Phone Number',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.adaptSize),
                              borderSide: BorderSide.none)),
                      validator: PhoneValidator.validMobile(),
                      isCountryChipPersistent: false, // default
                      isCountrySelectionEnabled: true, // default
                      countrySelectorNavigator:
                          CountrySelectorNavigator.draggableBottomSheet(),
                      showFlagInInput: true, // default
                      flagSize: 20, // default
                      autofillHints: [
                        AutofillHints.telephoneNumber
                      ], // default to null
                      enabled: true, // default
                      autofocus: false, // default
                      onSaved: (value) {
                        print(value);
                      }, // default null
                      onChanged: null, // default null
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Card(
                    elevation: 10,
                    color: AppColors.primary,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            child: PhoneVerificationScreen(),
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 300),
                          ),
                        );
                      },
                      child: Container(
                        height: 55.h,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(10.adaptSize),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primary.withOpacity(0.2),
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                              spreadRadius: 10,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Send Code",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18.adaptSize,
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w600,
                                color: AppColors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
