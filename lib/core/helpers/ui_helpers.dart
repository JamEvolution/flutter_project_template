import 'package:flutter/material.dart';

class UIHelpers {
  static Widget verticalSpace(double height) {
    return SizedBox(height: height);
  }

  static Widget horizontalSpace(double width) {
    return SizedBox(width: width);
  }

  static Widget loadingIndicator() {
    return Center(child: CircularProgressIndicator());
  }

  static Widget errorWidget(String message, VoidCallback onRetry) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: onRetry,
            child: Text('Retry'),
          ),
        ],
      ),
    );
  }
}
