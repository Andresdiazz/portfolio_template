import 'package:flutter/material.dart';
import 'package:portfolio_andres_diaz/components/animated_counter.dart';
import 'package:portfolio_andres_diaz/responsive.dart';

import '../../../constants.dart';

class HightLightInfo extends StatelessWidget {
  const HightLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 119,
                        text: 'K+',
                      ),
                      label: "Subscriber",
                    ),
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 40,
                        text: 'K+',
                      ),
                      label: "Videos",
                    ),
                  ],
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 30,
                        text: 'K+',
                      ),
                      label: "GitHub Projects",
                    ),
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 13,
                        text: 'K+',
                      ),
                      label: "Stars",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeightLight(
                  counter: AnimatedCounter(
                    value: 119,
                    text: 'K+',
                  ),
                  label: "Subscriber",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 40,
                    text: 'K+',
                  ),
                  label: "Videos",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 30,
                    text: 'K+',
                  ),
                  label: "GitHub Projects",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 13,
                    text: 'K+',
                  ),
                  label: "Stars",
                ),
              ],
            ),
    );
  }
}

class HeightLight extends StatelessWidget {
  const HeightLight({
    Key? key,
    required this.counter,
    this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          label!,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
