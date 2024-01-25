import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:spire_e_doctors/core/app_export.dart';
import 'package:spire_e_doctors/widgets/custom_elevated_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> services = ['Doctors', 'Labs', 'Therapist', 'Medicines'];
  @override
  Widget build(BuildContext context) {
    int _bottomNavIndex = 0;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
          backgroundColor: appTheme.gray100,
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.v),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Color(0XFF11B8BE).withOpacity(0.05),
                                  blurRadius: 20,
                                  offset: const Offset(0, 3),
                                  spreadRadius: 10,
                                )
                              ]),
                              child: Row(
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
                                        fontSize: 11.adaptSize,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Card(
                          elevation: 2,
                          shape: CircleBorder(),
                          child: CircleAvatar(
                            backgroundColor:
                                Color(0XFF11B8BE).withOpacity(0.03),
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
                      textAlign: TextAlign.start,
                      style: theme.textTheme.displayMedium!.copyWith(
                        color: Color.fromRGBO(36, 52, 78, 1),
                        fontSize: 25.adaptSize,
                      ),
                    ),
                    SizedBox(
                      height: 10.v,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 60.v,
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(10.adaptSize),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0XFF11B8BE).withOpacity(0.1),
                                    blurRadius: 20,
                                    offset: const Offset(0, 3),
                                    spreadRadius: 10,
                                  )
                                ]),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      suffixIcon: Icon(
                                        Icons.close_rounded,
                                        color: Color(0XFF11B8BE),
                                        size: 28.adaptSize,
                                      ),
                                      hintText: "Search here...",
                                      hintStyle: TextStyle(
                                        color: Colors.black.withOpacity(0.7),
                                        fontSize: 16.adaptSize,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                      ),
                                      prefixIconColor: Color(0XFF11B8BE),
                                      contentPadding: EdgeInsets.zero,
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Color(0XFF11B8BE),
                                        size: 28.adaptSize,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.h,
                        ),
                        Container(
                          height: 58.v,
                          padding: EdgeInsets.all(15.adaptSize),
                          decoration: BoxDecoration(
                            color: Color(0XFF11B8BE),
                            borderRadius: BorderRadius.circular(10.adaptSize),
                          ),
                          child: CustomImageView(
                            imagePath: 'assets/images/filter.svg',
                            color: Colors.white,
                            height: 28.v,
                            width: 28.h,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.v,
                    ),
                    FlutterCarousel(
                      items: crouselItem(),
                      options: CarouselOptions(
                        height: 200.0,
                        viewportFraction: 1.0,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 2),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: false,
                        pageSnapping: true,
                        scrollDirection: Axis.horizontal,
                        pauseAutoPlayOnTouch: true,
                        pauseAutoPlayOnManualNavigate: true,
                        pauseAutoPlayInFiniteScroll: false,
                        enlargeStrategy: CenterPageEnlargeStrategy.scale,
                        disableCenter: false,
                        showIndicator: true,
                        slideIndicator: CircularSlideIndicator(
                          itemSpacing: 17.adaptSize,
                          indicatorBackgroundColor: Colors.grey,
                          currentIndicatorColor: Color(0XFF11B8BE),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.v,
                    ),
                    Text(
                      "Services",
                      textAlign: TextAlign.start,
                      style: theme.textTheme.displayMedium!.copyWith(
                        color: Color.fromRGBO(36, 52, 78, 1),
                        fontSize: 30.adaptSize,
                      ),
                    ),
                    SizedBox(
                      height: 5.v,
                    ),
                    Container(
                      height: 180.v,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildServiceCard(
                              bgColor: Color.fromRGBO(99, 206, 250, 1),
                              img: 'assets/images/doctor.svg',
                              service: 'Doctors'),
                          _buildServiceCard(
                              bgColor: Color.fromRGBO(75, 201, 137, 1),
                              img: 'assets/images/labs.svg',
                              service: 'Labs'),
                          _buildServiceCard(
                              bgColor: Color.fromRGBO(162, 142, 237, 1),
                              img: 'assets/images/doctor.svg',
                              service: 'Therapist'),
                          _buildServiceCard(
                              bgColor: Color.fromRGBO(234, 67, 53, 1),
                              img: 'assets/images/therapist.svg',
                              service: 'Medicine')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.v,
                    ),
                    Text(
                      "Upcoming Appointment ",
                      textAlign: TextAlign.start,
                      style: theme.textTheme.displayMedium!.copyWith(
                        color: Color.fromRGBO(36, 52, 78, 1),
                        fontSize: 29.adaptSize,
                      ),
                    ),
                    SizedBox(
                      height: 15.v,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 120.v,
                            padding: EdgeInsets.all(10.adaptSize),
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(vertical: 5.h),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(10.adaptSize),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 8),
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 20,
                                    spreadRadius: 10,
                                  )
                                ]),
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustomImageView(
                                    height: double.maxFinite,
                                    imagePath: 'assets/images/doct.jpg',
                                    fit: BoxFit.fill,
                                    radius: BorderRadius.circular(10.adaptSize),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.h,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Jhon Alex",
                                              textAlign: TextAlign.start,
                                              style: theme
                                                  .textTheme.displayMedium!
                                                  .copyWith(
                                                color: Color.fromRGBO(
                                                    36, 52, 78, 1),
                                                fontSize: 14.adaptSize,
                                              ),
                                            ),
                                            Text(
                                              "06-Feb-2024",
                                              textAlign: TextAlign.start,
                                              style: theme
                                                  .textTheme.displayMedium!
                                                  .copyWith(
                                                color: Colors.grey,
                                                fontSize: 12.adaptSize,
                                              ),
                                            )
                                          ]),
                                      SizedBox(
                                        height: 3.v,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Dr. Lily Razor",
                                                  textAlign: TextAlign.start,
                                                  style: theme
                                                      .textTheme.displayMedium!
                                                      .copyWith(
                                                    color: Color.fromRGBO(
                                                        36, 52, 78, 1),
                                                    fontSize: 18.adaptSize,
                                                  ),
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
                                                          color: Colors.black
                                                              .withOpacity(0.7),
                                                          fontSize:
                                                              11.adaptSize,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              'Poppins'),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5.v,
                                                ),
                                                Container(
                                                  width: 45.h,
                                                  margin: EdgeInsets.only(
                                                      left: 10.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 5.adaptSize,
                                                      vertical: 2.adaptSize),
                                                  decoration: BoxDecoration(
                                                      color: Color(0XFF11B8BE),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.adaptSize)),
                                                  child: Center(
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "5.0 ",
                                                          style: TextStyle(
                                                            color: Colors.white
                                                                .withOpacity(
                                                                    0.7),
                                                            fontSize:
                                                                12.adaptSize,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: Colors.white,
                                                          size: 15.adaptSize,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: CustomElevatedButton(
                                                buttonStyle: ButtonStyle(
                                                  shape:
                                                      MaterialStatePropertyAll<
                                                          OutlinedBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.adaptSize),
                                                    ),
                                                  ),
                                                ),
                                                buttonTextStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13.adaptSize),
                                                height: 35,
                                                text: 'Reschedule'),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: AnimatedBottomNavigationBar(
            activeColor: Color(0XFF11B8BE),
            icons: [
              Icons.search,
              Icons.home,
              Icons.account_circle,
              Icons.chat,
              Icons.medical_information
            ],
            activeIndex: _bottomNavIndex, 
            onTap: (index) => setState(() => _bottomNavIndex = index),
            //other params
          )
        ),
    );
  }
}

Widget _buildServiceCard({String? service, Color? bgColor, String? img}) {
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: 5.h,
      vertical: 10.v,
    ),
    width: SizeUtils.width / 2.5,
    height: 180.v,
    padding: EdgeInsets.all(16.adaptSize),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        CustomImageView(
          imagePath: img,
          height: 60.v,
          width: 60.h,
          color: Colors.white,
        ),
        SizedBox(
          height: 10.v,
        ),
        Text(
          service ?? ' ',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.adaptSize,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins'),
        ),
      ],
    ),
  );
}

List<Widget> crouselItem() {
  return List.generate(5, ((index) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.h),
          width: double.maxFinite,
          padding: EdgeInsets.all(16.adaptSize),
          decoration: BoxDecoration(
            color: Color(0XFF11B8BE),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "All you need to know about your",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.adaptSize,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              Text(
                "Health",
                textAlign: TextAlign.start,
                style: theme.textTheme.displayMedium!.copyWith(
                  color: Colors.white,
                  fontSize: 30.adaptSize,
                ),
              ),
              SizedBox(
                height: 10.v,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.v),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.adaptSize)),
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Text(
                    " Order now",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.adaptSize,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20.adaptSize,
                  )
                ]),
              ),
              SizedBox(
                height: 10.v,
              ),
            ],
          ),
        ),
      ],
    );
  }));
}
