import 'package:flutter/material.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/widgets/custom_elevated_button.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //  width: 300.h,
          height: 500.v,
          padding: EdgeInsets.only(
            top: 10.adaptSize,
          ),
          decoration: BoxDecoration(
              color: Color(0xff11B8BE),
              borderRadius: BorderRadius.circular(30.adaptSize)),
          child: Column(
            children: [
              Container(
                height: 200,
                padding: EdgeInsets.all(10.adaptSize),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.3),
                ),
                child: Container(
                  padding: EdgeInsets.all(10.adaptSize),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.4),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.7),
                    ),
                    child: Image.asset('assets/images/key.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 40.v,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.h),
                child: Text(
                  " You Password has been reset",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.adaptSize,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
                ),
              ),
              SizedBox(
                height: 70.v,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.adaptSize),
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  height: 60.v,
                  buttonStyle: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromRGBO(36, 52, 78, 1))),
                  text: 'Done',
                ),
              )
            ],
          )
    );
  }
}
