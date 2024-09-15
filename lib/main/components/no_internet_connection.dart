import 'package:flutter/material.dart';

class NoInternetPage extends StatelessWidget {

  EdgeInsets getDevicePadding(BuildContext context) {
    return EdgeInsets.only(
      left: (MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 52),
      right:
      (MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 52),
      bottom: 2,
      top: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getDevicePadding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.wifi_off_rounded,
            color: Colors.blueGrey,
            size: 80.0,
          ),
          // Padding(
          //   padding: const EdgeInsets.all(32.0),
          //   child: Center(
          //     child: Text(
          //       'ooops'.tr(),
          //       textAlign: TextAlign.center,
          //       style: TextStyle(
          //         color: Colors.red.shade300,
          //         fontSize: 45,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Center(
              child: Text(
                'no_internet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
