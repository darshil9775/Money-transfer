import 'package:flutter/material.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:sizer/sizer.dart';

class BillsEnquiry extends StatefulWidget {
  const BillsEnquiry({super.key});

  @override
  State<BillsEnquiry> createState() => _BillsEnquiryState();
}

class _BillsEnquiryState extends State<BillsEnquiry> {
  List<Map<String, dynamic>> billEnquiry = [
    {
      "color": const Color(0xff40AFFF),
      "image": "assets/images/Rectangle 160.png",
      "name": "My House",
      "number": "**** *** 3980",
      "dolor": "15",
    },
    {
      "color": const Color(0xff47C199),
      "image": "assets/images/Group 253.png",
      "name": "Electric Office",
      "number": "**** *** 3980",
      "dolor": "35",
    },
    {
      "color": const Color(0xffA767F1),
      "image": "assets/images/Group 254.png",
      "name": "VIlla Bali",
      "number": "**** *** 3980",
      "dolor": "5",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Column(
        children: [
          7.h.addHSpace(),
          Image.asset("assets/images/Electric.png"),
          3.h.addHSpace(),
          "\$50.00".appTextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
          ),
          "need to be pay".appTextStyle(color: Colors.grey, fontSize: 10.sp),
          4.h.addHSpace(),
          Container(
            height: 52.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.h),
                topRight: Radius.circular(5.h),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 4.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Bills Enquiry".appTextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                      "See All".appTextStyle(
                        color: const Color(0xffFF897E),
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: billEnquiry.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 11.h,
                        width: 80.w,
                        margin: EdgeInsets.only(top: 1.5.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.h),
                          border: Border.all(
                            color: Colors.grey.shade400,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 12.h,
                              width: 12.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "${billEnquiry[index]['image']}"),
                                ),
                                shape: BoxShape.circle,
                                color: billEnquiry[index]['color'],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  "${billEnquiry[index]['name']}"
                                      .appTextStyle(fontSize: 12.sp),
                                  "${billEnquiry[index]['number']}"
                                      .appTextStyle(
                                          color: Colors.grey, fontSize: 12.sp),
                                ],
                              ),
                            ),
                            "\$${billEnquiry[index]['dolor']}".appTextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.sp),
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
