import 'package:flutter/material.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/balance_profile.dart';
import 'package:sizer/sizer.dart';

class TransactionSucces extends StatefulWidget {
  const TransactionSucces(
      {super.key, required this.amount, required this.amounts});
  final String amount;
  final String amounts;

  @override
  State<TransactionSucces> createState() => _TransactionSuccesState();
}

class _TransactionSuccesState extends State<TransactionSucces> {
  List<Map<String, dynamic>> transaction = [];
  @override
  void initState() {
    transaction = [
      {
        "text": "Name",
        "num": widget.amounts,
      },
      {
        "text": "Transaction ID",
        "num": "",
      },
      {
        "text": "Amount",
        "num": "\$${widget.amount}",
      },
      {
        "text": "Transfer cost",
        "num": "\$00.00",
      },
      {
        "text": "Time & Date",
        "num": "01/03/22, 11:00 AM",
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.w),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.close,
                size: 25.sp,
              ),
            ),
          ),
          Dialog(
            child: Container(
              height: 70.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff011A51),
                borderRadius: BorderRadius.circular(2.h),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(
                  children: [
                    3.h.addHSpace(),
                    Container(
                      height: 18.h,
                      width: 18.h,
                      decoration: const BoxDecoration(
                        color: Color(0xffFB847C),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/Vector.png"),
                        ),
                      ),
                    ),
                    4.h.addHSpace(),
                    "Transffered Succesfully".appTextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    2.h.addHSpace(),
                    const Divider(),
                    Column(
                      children: List.generate(
                        5,
                        (index) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "${transaction[index]['text']}".appTextStyle(
                                color: Colors.grey,
                                height: 3.5,
                                fontSize: 10.sp),
                            "${transaction[index]['num']}".appTextStyle(
                                color: Colors.white,
                                height: 3.5,
                                fontSize: 10.sp),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          2.h.addHSpace(),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffFB847C),
                minimumSize: Size(50.w, 7.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BalanceProfile(),
                  ),
                );
              },
              child: "DONE".appTextStyle(
                  color: Colors.white, letterSpacing: 2, fontSize: 13.sp),
            ),
          ),
        ],
      ),
    );
  }
}
