import 'package:flutter/material.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/payment_details.dart';
import 'package:sizer/sizer.dart';

class TopUpScreen extends StatefulWidget {
  const TopUpScreen({super.key});

  @override
  State<TopUpScreen> createState() => _TopUpScreenState();
}

class _TopUpScreenState extends State<TopUpScreen> {
  List balancecheck = [
    5,
    10,
    15,
    20,
    50,
    100,
    500,
    1000,
  ];

  List<Map<String, dynamic>> transactions = [
    {
      "color": Color(0xff4F31C2),
      "image": "assets/images/Vector (1).png",
      "name": "Paypall",
      "num": "**** *** 2878",
    },
    {
      "color": Color(0xffFF9D42),
      "image": "assets/images/Vector (3).png",
      "name": "Mcdonalds",
      "num": "**** *** 3720",
    },
    {
      "color": Color(0xff011A51),
      "image": "assets/images/Mask group (2).png",
      "name": "Amazon",
      "num": "**** *** 3980",
    },
  ];
  var add;
  var added;
  var select;
  int selectection = 0;
  int selected = 0;
  double slidervalue = 0;
  double slidervalues = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 4.h),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.keyboard_backspace,
                        size: 22.sp,
                      ),
                    ),
                    15.w.addWSpace(),
                    "Transaction Details".appTextStyle(
                        fontSize: 15.sp, color: Color(0xff011A51)),
                  ],
                ),
              ),
              4.h.addHSpace(),
              "Amount".appTextStyle(
                color: Colors.black,
              ),
              3.h.addHSpace(),
              "\$$slidervalue"
                  .appTextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
              0.5.h.addHSpace(),
              "Your Balance \$9840.50".appTextStyle(
                color: Colors.grey,
                fontSize: 10.sp,
              ),
              1.5.h.addHSpace(),
              SliderTheme(
                  data: SliderThemeData(
                    activeTrackColor: Color(0xffFF897E),
                    inactiveTrackColor: Colors.white,
                    thumbColor: Color(0xffFF897E),
                    trackHeight: 5,
                  ),
                  child: Slider.adaptive(
                    max: 1000,
                    divisions: 1000,
                    value: slidervalue,
                    onChanged: (value) {
                      slidervalue = value;
                      setState(() {});
                    },
                  )),
              Wrap(
                children: List.generate(
                    8,
                    (index) => InkWell(
                          onTap: () {
                            selected = balancecheck[index];
                            add = balancecheck[index];
                            setState(() {});
                          },
                          child: Container(
                            height: 8.h,
                            width: 8.h,
                            margin: EdgeInsets.only(left: 5.w, top: 3.h),
                            decoration: BoxDecoration(
                              color: selected == balancecheck[index]
                                  ? Color(0xffFF897E)
                                  : Colors.transparent,
                              border: Border.all(
                                color: selected == balancecheck[index]
                                    ? Colors.transparent
                                    : Colors.grey.shade400,
                              ),
                              borderRadius: BorderRadius.circular(1.5.h),
                            ),
                            child: Center(
                              child: "\$${balancecheck[index]}".appTextStyle(),
                            ),
                          ),
                        )),
              ),
              5.h.addHSpace(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Row(
                  children: [
                    "Wallet Type".appTextStyle(
                        fontWeight: FontWeight.w500, fontSize: 15.sp),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentDetails(
                              amount: add.toString(),
                              type: select.toString(),
                              id: added.toString(),
                            ),
                          ),
                        );
                      },
                      child: "Add".appTextStyle(
                        fontSize: 15.sp,
                        color: Color(0xff011A51),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35.h,
                child: ListView.builder(
                  itemCount: transactions.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 8.h,
                          width: 8.h,
                          margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: transactions[index]['color'],
                            image: DecorationImage(
                              image:
                                  AssetImage("${transactions[index]['image']}"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 25.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "${transactions[index]['name']}"
                                  .appTextStyle(fontSize: 14.sp),
                              "${transactions[index]['num']}".appTextStyle(
                                color: Colors.black45,
                                fontSize: 12.sp,
                              ),
                            ],
                          ),
                        ),
                        InkResponse(
                          onTap: () {
                            selectection = index;
                            select = transactions[index]['name'];
                            added = transactions[index]['num'];
                            setState(() {});
                          },
                          child: selectection == index
                              ? Icon(
                                  Icons.check_circle_sharp,
                                  size: 20.sp,
                                  color: Color(0xffFF897E),
                                )
                              : Icon(
                                  Icons.circle,
                                  size: 20.sp,
                                  color: Colors.grey.shade400,
                                ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
