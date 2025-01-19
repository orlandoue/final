import 'package:flutter/material.dart';
import 'package:orland_sports/const/appColors.dart';

class myLinearProgressIndicator extends StatelessWidget {
  final double? size;
  final Color? fillColor;
  final Color? border;
  final Color? valueColor;
  const myLinearProgressIndicator({super.key, this.size, this.fillColor, this.border, this.valueColor});

  @override
  Widget build(BuildContext context) {
    return      SizedBox(
                          width:size??220,
                          child: Container(
                            decoration: BoxDecoration(
                              color: kwhite,
                              border: Border.all(
                                color:border?? kpurple1,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: LinearProgressIndicator(
                                minHeight: 10,
                                backgroundColor:fillColor?? kwhite,
                                color:valueColor?? kpurple1,
                                value: 0.3,
                              ),
                            ),
                          ),
                        );
  }
}