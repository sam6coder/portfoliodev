import 'dart:async';
import 'dart:io';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'check_internet.dart';
import 'no_internet_connection.dart';

class WebViewBodyLoad extends StatefulWidget {
  // static const String routeName = '/webview-page-body';

  final String pageTitle;
  final String pageUrl;
  final bool headerFooterRequired;

  WebViewBodyLoad(
      {required this.pageTitle,
        required this.pageUrl,
        required this.headerFooterRequired});

  @override
  _WebViewBodyLoadState createState() => _WebViewBodyLoadState();
}

class _WebViewBodyLoadState extends State<WebViewBodyLoad> {
  bool isLoading = true;
  bool _connectionStatus = true;
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();

  late WebViewController _webViewController;
  String js =
      "document.querySelector('meta[name=\"viewport\"]').setAttribute('content', 'width=1024px, initial-scale=' + (document.documentElement.clientWidth / 1024));";

  checkMyInternet() async {
    CheckInternet().checkInternetConnection(context).then(
          (value) => {_connectionStatus = value},
    );
    await new Future.delayed(const Duration(milliseconds: 10));
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      final PlatformWebViewControllerCreationParams params =
      PlatformWebViewControllerCreationParams();

      final WebViewController controller =
      WebViewController.fromPlatformCreationParams(params)
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse('https://flutter.dev'));
    }
    checkMyInternet();
    _webViewController=WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) {
            if (!widget.headerFooterRequired) {
              _webViewController.runJavaScript(
                  "javascript:(function() { " +
                      "var head = document.getElementsByTagName('header')[0];" +
                      "head.parentNode.removeChild(head);" +
                      "var footer = document.getElementsByTagName('footer')[0];" +
                      "footer.parentNode.removeChild(footer);" +
                      "})()");
            }
            Future.delayed(const Duration(milliseconds: 500),
                    () {
                  setState(() {
                    isLoading = false;
                  });
                });
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.pageUrl));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final webData =
    //     ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // Set the color for the drawer icon
        ),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.white),
        //   onPressed: () => Navigator.of(context).pop(),
        // ),
        title: Text(
          widget.pageTitle,
          //_title,
          style: TextStyle(
            fontFamily: 'NotoSansJP',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.grey[850],
      ),
      body: _connectionStatus
          ? Container(
        child: Stack(
          children: <Widget>[
            WebViewWidget(
                controller: _webViewController),

            isLoading
                ? Container(
              color: Colors.white,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
                : Stack(),
          ],
        ),
      )
          : NoInternetPage(),
    );
  }
}
