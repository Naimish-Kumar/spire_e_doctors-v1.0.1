import 'package:flutter/material.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/theme/theme_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray100,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.v),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hi,",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.adaptSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Lato'),
                          ),
                          Text(
                            " Naimish",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.adaptSize,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Color(0XFF11B8BE),
                            size: 18.adaptSize,
                          ),
                          Text(
                            "greater Noida.",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 12.adaptSize,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Card(
                    elevation: 2,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      backgroundColor: Color(0XFF11B8BE).withOpacity(0.03),
                      radius: 20,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.notifications,
                          color: Color(0XFF11B8BE),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.v,
              ),
              Text(
                "Find Your Medical Solution !",
                style: theme.textTheme.displayMedium!.copyWith(
                  color: Color.fromRGBO(36, 52, 78, 1),
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
