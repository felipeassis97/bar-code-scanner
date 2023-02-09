import 'package:bar_code_scanner/bar_code_scanner/stores/code_scanner_store.dart';
import 'package:bar_code_scanner/bar_code_scanner/view/widgets/bottom_buttons_widget.dart';
import 'package:bar_code_scanner/core/service_locator/app_module.dart';
import 'package:bar_code_scanner/core/theme/app_assets.dart';
import 'package:bar_code_scanner/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScannerPage extends StatelessWidget {
  ScannerPage({Key? key}) : super(key: key);

  final scannerStore = AppModule.locator.get<CodeScannerStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: AppColors.primary),
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Observer(builder: (BuildContext context) {
                return Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Scan result:',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                    scannerStore.isLoading
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 8),
                            child: LinearProgressIndicator(
                              color: AppColors.primary,
                              backgroundColor: AppColors.secondary,
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 8),
                            child: Text(
                              scannerStore.code ?? 'Unknown',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14),
                            ),
                          ),
                  ],
                ));
              }),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: SvgPicture.asset(
                AppAssets.scan,
                height: 240,
                width: 240,
              ),
            ),
          ),
        ],
      ),
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomButtonsWidget(
        scanQRCode: () async => await scannerStore.getQRCode(),
        scanBarCode: () async => await scannerStore.getBarCode(),
      ),
    );
  }
}
