import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

import '../../../routes/app_pages.dart';
import '../controllers/otppage_controller.dart';

class OtpPageView extends GetView<OtppageController> {
  OtpPageView({Key? key}) : super(key: key);

  ///
  final themeColor = const Color(0xff129797);
  final themeColorFaded = const Color(0xff4BB7B1);
  final TextEditingController textEditingController = TextEditingController();

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
                children: [
                  SizedBox(
                    height: 10.h,
                  ),

                  ///HEADER INFO TEXT
                  buildHeaderTexts(),

                  SizedBox(
                    height: 4.h,
                  ),

                  ///PIN INPUT BOXES
                  buildPinInputs(context),

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
            Get.toNamed(Routes.FORGET_PASSWORD);
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

  buildPinInputs(context) {
    return PinCodeTextField(
      appContext: context,
      textStyle: TextStyle(
        color: Colors.black54,
        fontWeight: FontWeight.bold,
        fontSize: 22.sp,
      ),
      length: 5,
      blinkWhenObscuring: true,
      backgroundColor: Colors.transparent,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        fieldHeight: 16.w,
        fieldWidth: 16.w,
        activeFillColor: Colors.white,
        activeColor: themeColorFaded.withOpacity(0.5),
        fieldOuterPadding: EdgeInsets.zero,
        disabledColor: themeColorFaded.withOpacity(0.5),
        inactiveColor: themeColorFaded.withOpacity(0.5),
        selectedColor: themeColorFaded.withOpacity(0.5),
        selectedFillColor: Colors.white,
        inactiveFillColor: Colors.white,
      ),
      cursorColor: themeColor,
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      controller: textEditingController,
      keyboardType: TextInputType.number,
      boxShadows: const [
        BoxShadow(
          offset: Offset(0, 1),
          color: Colors.black12,
          blurRadius: 10,
        )
      ],
      onCompleted: (v) {},
      onChanged: (value) {},
      beforeTextPaste: (text) {
        debugPrint("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      },
    );
  }

  buildHeaderTexts() {
    return Column(
      children: [
        Text(
          "Confirm Your Number",
          style: TextStyle(
            color: const Color(0xff020E1B),
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 1.5.h,
        ),
        Text(
          "We send you a five digit code",
          style: TextStyle(
            color: Colors.black45,
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
