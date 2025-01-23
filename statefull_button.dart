import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StateFullButton extends StatefulWidget {
  const StateFullButton({super.key});

  @override
  State<StateFullButton> createState() => _StateFullButtonState();
}

class _StateFullButtonState extends State<StateFullButton> {
  double sliderValue = 0;
  double sliderValues = 0;
  bool isSwitch = false;
  bool isCheck = false;
  int radioValue = 0;
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SliderTheme(
          //   data: SliderThemeData(thumbColor: Colors.red),
          //   child: Slider.adaptive(
          //     value: sliderValue,
          //     onChanged: (value) {},
          //   ),
          // ),
          SliderTheme(
            data: SliderThemeData(
              activeTrackColor: Colors.green,
              inactiveTrackColor: Colors.grey.shade400,
              thumbColor: Colors.white,
              trackHeight: 4,
              activeTickMarkColor: Colors.white,
              inactiveTickMarkColor: Colors.white,
              valueIndicatorColor: Colors.transparent,
              valueIndicatorTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            child: Slider.adaptive(
              min: 0,
              max: 100,
              divisions: 100,
              label: "\$${sliderValue.toStringAsFixed(0)}",
              value: sliderValue,
              onChanged: (value) {
                sliderValue = value;
                setState(() {});
              },
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              activeTrackColor: Colors.green,
              inactiveTrackColor: Colors.grey.shade400,
              thumbColor: Colors.white,
              trackHeight: 4,
              activeTickMarkColor: Colors.white,
              inactiveTickMarkColor: Colors.white,
              valueIndicatorColor: Colors.transparent,
              valueIndicatorTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            child: Slider.adaptive(
              min: 0,
              max: 100,
              divisions: 10,
              label: "\$${sliderValues.toStringAsFixed(0)}",
              value: sliderValues,
              onChanged: (value) {
                sliderValues = value;
                setState(() {});
              },
            ),
          ),
          Switch(
            activeTrackColor: Colors.green,
            // trackColor: MaterialStateProperty.all(Colors.green),
            inactiveTrackColor: Colors.grey,
            thumbColor: MaterialStateProperty.all(Colors.white),
            value: isSwitch,
            onChanged: (value) {
              setState(() {
                isSwitch = !isSwitch;
              });
            },
          ),
          Checkbox(
            value: isCheck,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            activeColor: Colors.redAccent,
            checkColor: Colors.white,
            onChanged: (value) {
              isCheck = !isCheck;
              setState(() {});
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Male"),
              Radio(
                value: 1, groupValue: radioValue,
                // groupValue: radioValue,
                onChanged: (value) {
                  radioValue = value!;
                  setState(() {});
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Female"),
              Radio(
                value: 2,
                groupValue: radioValue,
                onChanged: (value) {
                  radioValue = value!;
                  setState(() {});
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("other"),
              Radio(
                value: 3,
                groupValue: radioValue,
                onChanged: (value) {
                  radioValue = value!;
                  setState(() {});
                },
              )
            ],
          ),
          TextField(
            obscureText: isShow,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: isShow == true
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
                onPressed: () {
                  setState(() {
                    isShow = !isShow;
                  });
                },
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black54,
              ),
              hintText: "Search product here",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 12.sp),
              fillColor: const Color(0xffF4F5F9),
              filled: true,
              constraints: BoxConstraints.expand(height: 6.h, width: 75.w),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(1.5.h),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(1.5.h),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
