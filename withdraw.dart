import 'package:flutter/material.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/confirm_withdraw.dart';
import 'package:money_transfer/payment_details.dart';
import 'package:sizer/sizer.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({super.key});

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
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
  var add;
  var added;
  List<Map<String, dynamic>> transactions = [
    {
      "color": Colors.blue.shade50,
      "image": "assets/images/Group 256.png",
      "name": "Personal Account",
      "num": "**** *** 2878",
    },
    {
      "color": Colors.red.shade50,
      "image": "assets/images/Group 212.png",
      "name": "Business Account",
      "num": "**** *** 3720",
    },
    {
      "color": Colors.purple.shade50,
      "image": "assets/images/Mask group (9).png",
      "name": "Saving Account",
      "num": "**** *** 3980",
    },
  ];
  List<Map<String, dynamic>> paymentdetails = [
    {
      "text": "Amount",
      "num": "\$20.00",
    },
    {
      "text": "Top up Type",
      "num": "Paypall",
    },
    {
      "text": "Transaction ID",
      "num": "234795-7456-0008",
    },
    {
      "text": "Time & Date",
      "num": "01/03/22 , 11:00 AM",
    },
  ];
  int select = 0;
  int selected = 0;
  double slidervalue = 0;
  double slidervalues = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.only(left: 5.w, top: 5.h, right: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                25.w.addWSpace(),
                "Withdraw"
                    .appTextStyle(fontSize: 17.sp, color: Color(0xff011A51)),
              ],
            ),
            2.h.addHSpace(),
            "Amount".appTextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 12.sp),
            4.h.addHSpace(),
            Center(
              child: Column(
                children: [
                  "\$$slidervalue".appTextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.sp),
                  1.h.addHSpace(),
                  "Your Balance \$9840.50".appTextStyle(
                    color: Colors.grey,
                    fontSize: 10.sp,
                  ),
                ],
              ),
            ),
            1.h.addHSpace(),
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
                          margin: EdgeInsets.only(left: 4.w, top: 3.5.h),
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
                            child: "\$${balancecheck[index]}".appTextStyle(
                              color: selected == balancecheck[index]
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      )),
            ),
            4.h.addHSpace(),
            Row(
              children: [
                "Bank Account "
                    .appTextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfirmWithdraw(
                          amount: add.toString(),
                          account: added.toString(),
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
                        margin: EdgeInsets.only(top: 2.h, bottom: 1.h),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: transactions[index]['color'],
                          image: DecorationImage(
                            image:
                                AssetImage("${transactions[index]['image']}"),
                            scale: 0.8,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 23.w, left: 4.w),
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
                          select = index;
                          added = transactions[index]['num'];
                          setState(() {});
                        },
                        child: select == index
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
    );
  }
}
