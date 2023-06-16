import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? title, subtitle;
  final Color? color;

  CloudStorageInfo({
    this.color,
    this.title,
    this.subtitle,
  });
}

List demoMyFiles = [
  CloudStorageInfo(title: "Total", subtitle: '16', color: Colors.red),
  CloudStorageInfo(title: "Online", subtitle: '19', color: Colors.green),
  CloudStorageInfo(title: "Plugged In", subtitle: '09', color: Colors.blue),
  CloudStorageInfo(title: "Offline", subtitle: '09', color: Colors.black),
];
