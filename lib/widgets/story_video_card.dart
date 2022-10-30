import 'package:contenter/style/colors.dart';
import 'package:contenter/widgets/submit_button.dart';
import 'package:flutter/material.dart';

class StroryVideoCard extends StatelessWidget {
  final bool isButtontrue;
  const StroryVideoCard({
    super.key,
    this.isButtontrue = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: gray04,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/icons/camera.png'),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Story Video',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '\$30',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'To make a video of backstage of making a coffee.',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: 20,
          ),
          isButtontrue
              ? SubmitButton(
                  textColor: lightviolet,
                  text: 'Take a part',
                  color: gray03,
                  onTap: () {},
                )
              : const SizedBox(
                  height: 20,
                ),
        ],
      ),
    );
  }
}
