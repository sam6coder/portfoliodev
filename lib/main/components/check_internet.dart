import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class CheckInternet {
  StreamSubscription<InternetConnectionStatus>? listener;
  //StreamSubscription<DataConnectionStatus> listener;
  var internetStatus = "Unknown";
  var contentmessage = "Unknown";

  checkConnection(BuildContext context) async {
    listener = InternetConnectionChecker().onStatusChange.listen(
          (status) {
        switch (status) {
          case InternetConnectionStatus.connected:
            internetStatus = "Connected to the Internet";
            contentmessage = "Connected to the Internet";
            showMyAlertDialog(
              context: context,
              message: internetStatus,
              buttonLabel: 'close',
              title: 'Internet Status',
              onPressed: () {
                Navigator.of(context).pop();
              },
            );
            break;
          case InternetConnectionStatus.disconnected:
            internetStatus = "You are disconnected to the Internet. ";
            contentmessage = "Please check your internet connection";
            showMyAlertDialog(
              context: context,
              message: internetStatus,
              buttonLabel: 'close',
              title: 'Internet Status',
              onPressed: () {
                Navigator.of(context).pop();
              },
            );
            break;
        }
      },
    );
    return await InternetConnectionChecker().connectionStatus;
  }

  void showMyAlertDialog({
    required BuildContext context,
    required String title,
    required String message,
    required String buttonLabel,
    required Function onPressed,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Container(
            child: new Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          content: new Text(
            message,
            style: TextStyle(
              color: Colors.blue.shade800,
            ),
          ),
          actions: <Widget>[
            new ElevatedButton(
              onPressed: onPressed(),
              // () {
              //   Navigator.of(context).pop();
              // },
              child: new Text(
                buttonLabel,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        );
      },
    );
  }

  Future<bool> checkInternetConnection(BuildContext context) async {
    bool result = await InternetConnectionChecker().hasConnection;
    // if (result == true) {
    //   //print('YAY! Free cute dog pics!');
    //   internetStatus = "Connected to the Internet";
    //   contentmessage = "Connected to the Internet";
    //   _showDialog(internetStatus, contentmessage, context);
    // } else {
    //   //print('No internet :( Reason:');
    //   //print(DataConnectionChecker().lastTryResults);
    //   internetStatus = "You are disconnected to the Internet. ";
    //   contentmessage = "Please check your internet connection";
    //   _showDialog(internetStatus, contentmessage, context);
    // }
    // //print('==========>>>>>>>>> $result');
    return result;
  }
}
