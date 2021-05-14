import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const IconTextWidget({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // satıra sığmadığı zaman alta geçmesini sağlar.
      spacing: 10,
      children: [buildIcon(context), buildTitleText(context)],
    );
  }

  Icon buildIcon(BuildContext context) {
    return Icon(
      icon,
      color: Theme.of(context).colorScheme.primary,
    );
  }

  Text buildTitleText(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline6!.copyWith(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold),
    );
  }
}
