import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/core/utils/app_colors.dart';
import 'package:spire_e_doctors/widgets/custom_elevated_button.dart';

class VerificationDoneScreen extends StatelessWidget {
  final PhoneController phoneController =
      PhoneController(PhoneNumber(isoCode: IsoCode.IN, nsn: ''));
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.darkPrimary,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: AppColors.darkPrimary,
        body: Center(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40.h, vertical: 100.v),
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(200.adaptSize),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 60.v),
                  Center(
                    child: Container(
                      width: 200.v,
                      height: 200.h,
                      margin: EdgeInsets.symmetric(
                          horizontal: 40.h, vertical: 100.v),
                      padding: EdgeInsets.all(10.adaptSize),
                      decoration: BoxDecoration(
                          color: AppColors.white.withOpacity(0.1),
                          shape: BoxShape.circle),
                      child: Center(
                        child: Container(
                          width: 200.v,
                          height: 200.h,
                          padding: EdgeInsets.all(10.adaptSize),
                          decoration: BoxDecoration(
                              color: AppColors.white.withOpacity(0.15),
                              shape: BoxShape.circle),
                          child: Container(
                            width: 200.v,
                            height: 200.h,
                            decoration: BoxDecoration(
                                color: AppColors.white.withOpacity(0.2),
                                shape: BoxShape.circle),
                            child: RotatedBox(
                              quarterTurns: 4,
                              child: Icon(
                                Icons.key_outlined,
                                size: 100.adaptSize,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60.adaptSize),
                    child: Text(
                      'Your Password has been reset Successfully',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Barlow',
                          fontSize: 20.adaptSize,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 100.v, vertical: 30.adaptSize),
                    child: Card(
                      elevation: 20,
                      child: CustomElevatedButton(
                        height: 60.v,
                        buttonStyle: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.darkPrimary),
                        ),
                        text: 'Done',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
