import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../routes/app_pages.dart';
import '../controllers/forget_password_controller.dart';

class ForgetPasswordView extends GetView<ForgetPasswordController> {
  const ForgetPasswordView({Key? key}) : super(key: key);

  ///
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 3.h,
                  ),

                  ///HEADER INFO TEXT
                  buildHeaderTexts(),

                  SizedBox(
                    height: 2.h,
                  ),

                  ///EMAIL / PHONE NUMBER INPUT
                  buildInputFields(),

                  SizedBox(
                    height: 3.h,
                  ),

                  ///CONFIRM BUTTON
                  buildAConfirmButtons(),
                ],
              ),
            ),
          ],
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

  buildAConfirmButtons() {
    return SizedBox(
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
            Get.toNamed(Routes.FORGET_PASSWORD_TWO);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.symmetric(vertical: 2.3.h),
          ),
          child: Text(
            'Confirm',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
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

  buildHeaderTexts() {
    return Column(
      children: [
        Text(
          "Forget Password",
          style: TextStyle(
            color: const Color(0xff020E1B),
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  buildInputFields() {
    return Material(
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
    );
  }
}
