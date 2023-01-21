import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.agriculture_sharp, color: AppTheme.primary),
            title: Text('Soy un Titulo'),
            subtitle: Text(
                'Lorem ipsum dolor sit amet consectetur adipiscing elit nunc at, dapibus imperdiet magna iaculis natoque ligula sodales maecenas molestie dignissim, orci class hac rutrum fames sagittis primis quisque. '),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('OK'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
