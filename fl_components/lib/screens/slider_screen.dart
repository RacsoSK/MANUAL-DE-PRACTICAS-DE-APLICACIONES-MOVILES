import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {

  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 200;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled 
            ? (value) {
              _sliderValue = value;
              setState(() {});
              }
            :null,
          ),

          //Checkbox(
          //  value: _sliderEnabled,
          //  onChanged: ((value) {
          //    _sliderEnabled = value ?? false;
          //    setState(() {});
          //  }
          //  ),
          //),

          //CHECKBOX 1
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: ( value ) => setState(() {
              _sliderEnabled = value ?? true;
            }),
            ),

          //CHECKBOX 1
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: ( value ) => setState(() {
              _sliderEnabled = value;
            }),
            ),

            const AboutListTile(),


          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://eltallerdehector.com/wp-content/uploads/2022/10/Spiderman-png-transparent.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}