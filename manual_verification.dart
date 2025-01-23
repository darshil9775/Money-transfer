import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ManualVerification extends StatefulWidget {
  const ManualVerification({super.key});

  @override
  State<ManualVerification> createState() => _ManualVerificationState();
}

class _ManualVerificationState extends State<ManualVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
              ),
              context: context,
              builder: (context) {
                return BottomSheetShow();
              },
            );
          },
          child: const Text("Show Modal Bottom Sheet"),
        ),
      ),
    );
  }
}

class BottomSheetShow extends StatefulWidget {
  const BottomSheetShow({super.key});

  @override
  State<BottomSheetShow> createState() => _BottomSheetShowState();
}

class _BottomSheetShowState extends State<BottomSheetShow> {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return const SizedBox(
          height: 650,
          width: 500,
          child: Column(
            children: [
              Text(
                "Choose payment methode",
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
        );
      },
    );
  }
}
