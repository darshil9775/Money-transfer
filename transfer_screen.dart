import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/transaction_succes.dart';
import 'package:sizer/sizer.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  List transfermoney = [
    100,
    150,
    200,
    250,
  ];
  List<Map<String, dynamic>> recepient = [
    {
      "image": "assets/images/Mask group (4).png",
      "name": "badiyo",
    },
    {
      "image": "assets/images/Mask group (5).png",
      "name": "badi",
    },
    {
      "image": "assets/images/Mask group (6).png",
      "name": "Russian",
    },
    {
      "image": "assets/images/Mask group (7).png",
      "name": "toppy",
    },
    {
      "image": "assets/images/Mask group (8).png",
      "name": "kalu",
    },
  ];
  var added;
  int selection = 0;
  int select = 0;
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              4.h.addHSpace(),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.keyboard_backspace,
                  size: 20.sp,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 17.sp,
                    color: const Color(0xff011A51),
                  ),
                  2.w.addWSpace(),
                  "Send Money".appTextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff011A51),
                  ),
                  Spacer(),
                  Container(
                    height: 6.h,
                    width: 6.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          image: AssetImage("assets/images/Mask group (3).png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              1.h.addHSpace(),
              Padding(
                padding: EdgeInsets.only(left: 3.w),
                child: "Choose Account".appTextStyle(
                  color: const Color(0xff777777),
                  fontSize: 14.sp,
                ),
              ),
              4.h.addHSpace(),
              Center(
                child: Image.asset(
                  "assets/images/18 Card.png",
                  scale: 0.5,
                ),
              ),
              3.h.addHSpace(),
              Center(
                child: "How much you would like to send?"
                    .appTextStyle(fontWeight: FontWeight.w500, fontSize: 13.sp),
              ),
              3.h.addHSpace(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (select > 0) {
                        select--;
                        setState(() {});
                      }
                    },
                    child: Container(
                      height: 4.h,
                      width: 4.h,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(1.h),
                      ),
                      child: const Icon(Icons.remove),
                    ),
                  ),
                  "$select.00".appTextStyle(
                      color: Color(0xff011A51),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500),
                  GestureDetector(
                    onTap: () {
                      select++;
                      setState(() {});
                    },
                    child: Container(
                      height: 4.h,
                      width: 4.h,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(1.h),
                      ),
                      child: const Icon(Icons.add),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: transfermoney.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        InkWell(
                          onTap: () {
                            selected = transfermoney[index];
                            select = selected;
                            setState(() {});
                          },
                          child: Container(
                            height: 4.h,
                            width: 8.h,
                            margin: EdgeInsets.symmetric(horizontal: 3.w),
                            decoration: BoxDecoration(
                              color: selected == transfermoney[index]
                                  ? const Color(0xffF8C345)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(3.h),
                              border: Border.all(
                                  color: selected == transfermoney[index]
                                      ? Colors.transparent
                                      : Colors.grey.shade400),
                            ),
                            child: Center(
                              child: "\$${transfermoney[index]}"
                                  .appTextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              "Choose Recepient"
                  .appTextStyle(fontWeight: FontWeight.w500, fontSize: 13.sp),
              1.h.addHSpace(),
              SizedBox(
                height: 14.h,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            added = recepient[index]['name'];
                            selection = index;
                            setState(() {});
                          },
                          child: Container(
                            height: 10.h,
                            width: 15.w,
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage("${recepient[index]['image']}"),
                                scale: 0.5,
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: selection == index
                                    ? const Color(0xff011A51)
                                    : Colors.transparent,
                                width: 3,
                              ),
                            ),
                          ),
                        ),
                        "${recepient[index]['name']}".appTextStyle(
                            color: selection == index
                                ? Colors.black
                                : Colors.transparent,
                            fontSize: 10.sp),
                      ],
                    );
                  },
                ),
              ),
              1.h.addHSpace(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.5.h),
                      ),
                      minimumSize: Size(25.w, 7.h),
                      backgroundColor: const Color(0xffFB9089),
                    ),
                    onPressed: () {},
                    child: "TAKE ME BACK"
                        .appTextStyle(color: Colors.white, fontSize: 12.sp),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.5.h),
                      ),
                      minimumSize: Size(25.w, 7.h),
                      backgroundColor: const Color(0xff011A51),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TransactionSucces(
                            amount: select.toString(),
                            amounts: added.toString(),
                          ),
                        ),
                      );
                    },
                    child: "SEND MONEY"
                        .appTextStyle(color: Colors.white, fontSize: 12.sp),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
