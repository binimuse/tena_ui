import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../routes/app_pages.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  final themeColor = const Color(0xff129797);
  final themeColorFaded = const Color(0xff4BB7B1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffF6FBFB),
      body: Container(
        color: const Color(0xffF6FBFB),
        height: double.infinity,
        child: Stack(
          children: [
            ///BOTTOM IMAGE AND GUEST BUTTON
            buildFooter(),

            ///OTHER WIDGETS
            Padding(
              padding: EdgeInsets.all(2.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///HEADER TEXT
                    buildHeader(),

                    SizedBox(
                      height: 5.5.h,
                    ),

                    ///EMAIL/PHONE/PASSWORD INPUTS
                    buildInputFields(),

                    SizedBox(
                      height: 4.h,
                    ),

                    ///SIGN UP AND SIGN IN BUTTONS
                    buildAccountButtons(),

                    SizedBox(
                      height: 6.h,
                    ),

                    ///GUEST BUTTON
                    buildGuestButton(),

                    SizedBox(
                      height: 1.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildHeader() {
    return Text(
      "Hello!\nSign up to\nGet Started",
      style: TextStyle(
        color: themeColor,
        fontSize: 28.sp,
        letterSpacing: 1.5,
        height: 0.18.h,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  buildInputFields() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Material(
                shadowColor: Colors.black38,
                borderRadius: BorderRadius.circular(6.0),
                elevation: 2,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none,
                  ),
                  decoration: InputDecoration(
                    hintText: "First Name",
                    hintStyle: TextStyle(
                      color: const Color(0xff757A80),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    alignLabelWithHint: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(6.0),
                      ),
                      borderSide: BorderSide(
                        color: themeColor.withOpacity(0.4),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(6.0),
                      ),
                      borderSide: BorderSide(
                        color: themeColor,
                      ),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 5.w,
                      horizontal: 2.7.w,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 2.5.h,
            ),
            Expanded(
              child: Material(
                shadowColor: Colors.black38,
                borderRadius: BorderRadius.circular(6.0),
                elevation: 2,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none,
                  ),
                  decoration: InputDecoration(
                    hintText: "Last Name",
                    hintStyle: TextStyle(
                      color: const Color(0xff757A80),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    alignLabelWithHint: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(6.0),
                      ),
                      borderSide: BorderSide(
                        color: themeColor.withOpacity(0.4),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(6.0),
                      ),
                      borderSide: BorderSide(
                        color: themeColor,
                      ),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 5.w,
                      horizontal: 2.7.w,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2.5.h,
        ),
        Material(
          shadowColor: Colors.black38,
          borderRadius: BorderRadius.circular(6.0),
          elevation: 2,
          child: TextField(
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
            decoration: InputDecoration(
              hintText: "Enter Email / Phone No",
              hintStyle: TextStyle(
                color: const Color(0xff757A80),
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
              ),
              alignLabelWithHint: true,
              suffixIcon: const Icon(
                Icons.email_outlined,
                color: Color(0xffD6D6D6),
              ),
              fillColor: Colors.white,
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(6.0),
                ),
                borderSide: BorderSide(
                  color: themeColor.withOpacity(0.4),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(6.0),
                ),
                borderSide: BorderSide(
                  color: themeColor,
                ),
              ),
              filled: true,
              contentPadding: EdgeInsets.symmetric(
                vertical: 5.w,
                horizontal: 2.7.w,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.5.h,
        ),
        Obx(() {
          return Material(
            shadowColor: Colors.black38,
            borderRadius: BorderRadius.circular(6.0),
            elevation: 2,
            child: TextField(
              obscureText: !controller.passwordShow.value,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.none,
              ),
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(
                  color: const Color(0xff757A80),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
                alignLabelWithHint: true,
                suffixIcon: IconButton(
                  icon: Icon(
                    controller.passwordShow.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: const Color(0xffD6D6D6),
                  ),
                  onPressed: () {
                    controller.changePasswordStatus();
                  },
                ),
                fillColor: Colors.white,
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                  borderSide: BorderSide(
                    color: themeColor.withOpacity(0.4),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                  borderSide: BorderSide(
                    color: themeColor,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 5.w,
                  horizontal: 2.7.w,
                ),
              ),
            ),
          );
        }),
        SizedBox(
          height: 2.5.h,
        ),
        Obx(() {
          return Material(
            shadowColor: Colors.black38,
            borderRadius: BorderRadius.circular(6.0),
            elevation: 2,
            child: TextField(
              obscureText: !controller.passwordConfirmShow.value,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.none,
              ),
              decoration: InputDecoration(
                hintText: "Confirm Password",
                hintStyle: TextStyle(
                  color: const Color(0xff757A80),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
                alignLabelWithHint: true,
                suffixIcon: IconButton(
                  icon: Icon(
                    controller.passwordConfirmShow.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: const Color(0xffD6D6D6),
                  ),
                  onPressed: () {
                    controller.changePasswordConfirmShowStatus();
                  },
                ),
                fillColor: Colors.white,
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                  borderSide: BorderSide(
                    color: themeColor.withOpacity(0.4),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                  borderSide: BorderSide(
                    color: themeColor,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 5.w,
                  horizontal: 2.7.w,
                ),
              ),
            ),
          );
        }),
      ],
    );
  }

  buildFooter() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: -25.h,
      child: Image.asset(
        'assets/images/doc.png',
        height: 65.h,
        fit: BoxFit.contain,
      ),
    );
  }

  buildGuestButton() {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: Text.rich(
          TextSpan(
            text: 'Continue as ',
            style: TextStyle(
              color: const Color(0xff757A80),
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
            ),
            children: <InlineSpan>[
              TextSpan(
                text: 'Guest',
                style: TextStyle(
                  color: themeColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      toolbarHeight: 11.h,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black87,
        ),
      ),
      title: Row(
        children: [
          const CircleAvatar(
            radius: 17,
            backgroundColor: Colors.black26,
          ),
          SizedBox(
            width: 3.w,
          ),
          Text(
            "Tena",
            style: TextStyle(
              color: const Color(0xff129797),
              fontWeight: FontWeight.w400,
              fontSize: 20.sp,
            ),
          ),
        ],
      ),
      centerTitle: false,
      backgroundColor: const Color(0xffF6FBFB),
      shadowColor: Colors.transparent,
    );
  }

  buildAccountButtons() {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [themeColor, themeColorFaded],
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.OTPPAGE);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
                padding: EdgeInsets.symmetric(vertical: 2.3.h),
              ),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Text(
              "Already Have an Account?",
              style: TextStyle(
                color: const Color(0xff020E1B),
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButton(
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: themeColor,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ],
    );
  }
}
