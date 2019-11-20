import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  Map<PermissionGroup, PermissionStatus> permissions;

  @override
  void initState() {
    super.initState();
    getPermission();
  }

  void getPermission() async {
    permissions = await PermissionHandler().requestPermissions([
      PermissionGroup.camera,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
