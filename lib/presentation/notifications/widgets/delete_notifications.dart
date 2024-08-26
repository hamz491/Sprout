import 'package:flutter/material.dart';

class DeleteNotifications extends StatelessWidget {
  const DeleteNotifications({
    super.key,
    required this.myKey,
    required this.child,
    this.onDismissed,
  });
  final Key myKey;
  final Widget child;
  final Function(DismissDirection)? onDismissed;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: myKey,
      background: Container(
        padding: const EdgeInsets.only(right: 20),
        color: const Color(0xffF9A0B1),
        child: const Align(
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.delete,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
      onDismissed: onDismissed,
      child: child,
    );
  }
}
