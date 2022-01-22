import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

class InternetChecker{

  Future connectionStatus() async {
    try {
      final result = await InternetAddress.lookup('www.healthsolutions.com.pk');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        debugPrint('connected ::: $result');
      }
    } on SocketException catch (e) {
      debugPrint('Socket Exception! $e');
      Fluttertoast.showToast(msg: 'No internet!');
    } on HttpException catch (e) {
      debugPrint('Http Exception! $e');
      Fluttertoast.showToast(msg: 'Http request failed!');
    } catch (e) {
      debugPrint('Different Exception $e');
      Fluttertoast.showToast(msg: 'Unknown error occurred!');
    }
  }

}