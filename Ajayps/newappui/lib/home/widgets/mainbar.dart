import 'package:flutter/material.dart';

import 'portfolio.dart';

class mainbar extends StatelessWidget {
  const mainbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset('assets/cover.jpg'),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          //width: screenwidth,
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "The buzz about Tata Motors taking over the plant got stronger",
            style: Theme.of(context).primaryTextTheme.headline5,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(Profile.routeName2);
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.jpg'),
                    radius: 23,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(Profile.routeName2);
                  },
                  child: Text(
                    'Ajay ps ',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
            Text(
              '12 oct, 2021 ',
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
      ],
    );
  }
}