import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../../utils/appcolor.dart';


Widget buildSwitchTile({
  required String title,
  required String subtitle,
  required RxBool value,
  required Function(bool) onChanged,
}) {
  return Obx(() => SwitchListTile(
    contentPadding: EdgeInsets.zero,
    title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
    subtitle: Text(subtitle),
    value: value.value,
    onChanged: onChanged,
    activeColor: AppColor.fontWhite,
    activeTrackColor: AppColor.ratingStarColor,
    inactiveThumbColor: AppColor.fontWhite,
    inactiveTrackColor: AppColor.inActiveSwitchColor,
  ));
}