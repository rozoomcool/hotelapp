import 'package:flutter/material.dart';

class ChipsWrap extends StatelessWidget {
  List<String> chips;

  ChipsWrap({super.key, required this.chips});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: chips
          .map((e) => Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Chip(
                    label: Text(
                      e,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium,
                    ),
                    backgroundColor: const Color(0xFFFBFBFC),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                ],
              ))
          .toList(),
    );
  }
}
