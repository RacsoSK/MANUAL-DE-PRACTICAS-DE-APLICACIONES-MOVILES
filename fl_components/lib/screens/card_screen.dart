import 'package:fl_components/widgets/widgets.dart';

import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        children: const [
          CustomCardTipo1(),
          SizedBox(height: 10),
          CustomWidgetTipo2(
            name: 'MacLarem',
            imageURL:
                'https://images7.alphacoders.com/588/thumb-1920-588644.jpg',
          ),
          SizedBox(height: 10),
          CustomWidgetTipo2(
            name: null,
            imageURL:
                'https://newevolutiondesigns.com/images/freebies/4k-car-ipad-wallpaper-1.jpg',
          ),
          SizedBox(height: 10),
          CustomWidgetTipo2(
            name: 'BMW',
            imageURL: 'https://wallpaperaccess.com/full/13660.jpg',
          ),
          SizedBox(height: 10),
          CustomWidgetTipo2(
            name: 'Nissan 350z',
            imageURL:
                'https://images.unsplash.com/photo-1623087732959-f407d6957012?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmlzc2FuJTIwMzUwenxlbnwwfHwwfHw%3D&w=1000&q=80',
          ),
        ],
      ),
    );
  }
}
