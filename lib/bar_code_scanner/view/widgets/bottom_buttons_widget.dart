import 'package:bar_code_scanner/core/theme/app_assets.dart';
import 'package:bar_code_scanner/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomButtonsWidget extends StatelessWidget {
  final void Function()? scanQRCode;
  final void Function()? scanBarCode;
  const BottomButtonsWidget(
      {Key? key, required this.scanQRCode, required this.scanBarCode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: AppColors.secondary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: scanBarCode,
            child: Row(
              children: [
                SvgPicture.asset(
                  AppAssets.barcode,
                  height: 50,
                  width: 50,
                  color: Colors.white,
                ),
                const SizedBox(width: 6),
                const Text(
                  'BAR CODE',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.white),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: VerticalDivider(
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: scanQRCode,
            child: Row(
              children: [
                SvgPicture.asset(
                  AppAssets.qrcode,
                  height: 50,
                  width: 50,
                  color: Colors.white,
                ),
                const SizedBox(width: 6),
                const Text(
                  'QR CODE',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
