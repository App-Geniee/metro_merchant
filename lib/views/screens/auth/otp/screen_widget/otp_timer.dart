import 'dart:async';

import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class OtpTimer extends StatefulWidget {
  final VoidCallback onTimeComplete;
  final int duration;
  const OtpTimer({Key? key,required this.onTimeComplete,this.duration = 12}) : super(key: key);

  @override
  State<OtpTimer> createState() => _OtpTimerState();
}

class _OtpTimerState extends State<OtpTimer> {

  Timer? _timer;
  int _counter = 0;
  bool isTimeEnd = false;

  @override
  void initState() {
    super.initState();
    _counter = widget.duration;
    _startTimer();
  }




  _startTimer(){
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_counter == 0) {
        widget.onTimeComplete();
        isTimeEnd = true;
      } else {
        setState(() {
          _counter--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
            "Resend code in",
            style: boldDefault.copyWith(color: AppColors.colorBlack)
        ),
        const SizedBox(width: Dimensions.space8),
        Text(
            '${_counter.toString()} second',
            style: boldDefault.copyWith(color: AppColors.secondaryColor900)
        ),
      ],
    );
  }
}